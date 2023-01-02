	#include <stdlib.h>
	#include <stdio.h>
	#include "riffa.h"

	void radix4_fpga (int numWords, int id_FPGA, float *real, float *imag);
	void FPGA_info ();

int test1dFFT(int num)
{
	int i, j;

	unsigned long long start_cyc, stop_cyc;
	unsigned long long cyclesData[REPEAT_LOOP];
	unsigned long long cyclesData_FFTW[REPEAT_LOOP];
	unsigned long long cyclesRandom, 	 cyclesMinSC, 		cyclesMedianSC;
	unsigned long long cyclesRandomFFTW, cyclesMinFFTW, 	cyclesMedianFFTW;

	float *real = NULL,
		  *imag = NULL;

	posix_memalign((void**)&real, ALIGNMENT, num * sizeof(float));
	posix_memalign((void**)&imag, ALIGNMENT, num * sizeof(float));

	float real_out[num] ,
		  imag_out [num];

// - - -- - - - - -- - -  INITIALIZING VALUE WITH TXT FILE - - - - - - -
	FILE *fp_R, *fp_I;
	//fp_R = fopen("Reales_input.txt", "r");
	//fp_R = fopen("Reales_input_1_4096_2a.txt", "r");
	 fp_R = fopen("Reales_input_1_16384_2a.txt", "r");
	for (i = 0; i < num; i++)
	{
		fscanf(fp_R, "%f,", &real[i]);
	}
	 fclose(fp_R);

	//fp_I = fopen("Imag_input.txt", "r");
	//fp_I = fopen("Imag_input_1_4096_2a.txt", "r");
	fp_I = fopen("Imag_input_1_16384_2a.txt", "r");
	for (i = 0; i < num; i++)
	{
		fscanf(fp_I, "%f,", &imag[i]);
	}
	 fclose(fp_I);

// - - -- - - - - -- - -  INITIALIZING VALUE WITH TXT FILE - - - - - - -

	for (j = 0; j < REPEAT_LOOP; j++)
	{
		start_cyc = cycles();
		//	radix4_k1(real, imag);		  // SWclock counter
		radix4_fpga (num, 0, &real[0], &imag[0]); // FPGA clock counter
		stop_cyc = cycles();
		cyclesData[j] = stop_cyc - start_cyc;

		#if FFTW == ON
			start_cyc = cycles();
				fftwf_execute(p1);
			stop_cyc = cycles();
			cyclesData_FFTW[j] = stop_cyc - start_cyc;
		#endif
	}

	int half = (int)(REPEAT_LOOP/2-1);

	sortData_Cyc(cyclesData, REPEAT_LOOP);
	cyclesMinSC     = cyclesData[0];
	cyclesMedianSC  = cyclesData[half];

	#if FFTW == ON
	sortData_Cyc(cyclesData_FFTW, REPEAT_LOOP);
	cyclesMinFFTW    = cyclesData_FFTW[0];
	cyclesMedianFFTW = cyclesData_FFTW[half];
	#endif

	printf("\n  ---------------------------------------------------\n");
	printf("  FFT Size: %d | Repetitions: %d\n", num, (int)REPEAT_LOOP);
	printf("  ---------------------------------------------------\n");
	printf("  CYCLES \t VECFFT CYCLES \t FFTW CYCLES\n");
	printf("  ---------------------------------------------------\n");
	printf("  MIN  \t\t %llu \t\t\t %llu \n",  cyclesMinSC,     cyclesMinFFTW);
	printf("  MEDIAN \t %llu \t\t\t %llu \n",  cyclesMedianSC,  cyclesMedianFFTW);
	

	// -- - - - - - - -- compare HW and SW results - - - - -- - - -
	FILE *fp_R_out, *fp_I_out;
	//fp_R_out = fopen("Reales_ordered.txt", "r");
	//fp_R_out = fopen("Reales_output_1_4096_2a.txt", "r");
	fp_R_out = fopen("Reales_output_1_16384_2a.txt", "r");
	for (i = 0; i < num; i++)
	{
		fscanf(fp_R_out, "%f,", &real_out[i]);
	}
	 fclose(fp_R_out);

	//fp_I_out = fopen("Imag_ordered.txt", "r");
	//fp_I_out = fopen("Imag_output_1_4096_2a.txt", "r");
	fp_I_out = fopen("Imag_output_1_16384_2a.txt", "r");
	for (i = 0; i < num; i++)
	{
		fscanf(fp_I_out, "%f,", &imag_out[i]);
	}
	 fclose(fp_I_out);

	 float num_tol;
	 int test_var;
	 test_var = 0;
	

	for (i = 0; i < num; i = i+1)
	{
		num_tol = fabs(real_out[i]) - fabs(real[i]);
		//printf("real [%d] -> %f - %f = %f\n",i,fabs(real_out[i]), fabs(real[i]),num_tol);
		if(fabs(num_tol) > .00001)
		//if((i/4)+1 != real[i])
		{
			test_var = test_var + 1;
		//	printf("real [%d] ->  %f - %f = %f\n",i,fabs(real_out[i]), fabs(real[i]),num_tol);
			printf("real [%d] -> %f - %f = %f\n",i,fabs(real_out[i]), fabs(real[i]),num_tol);
		}

		num_tol = fabs(imag_out[i]) - fabs(imag[i]);
		//printf("imag [%d] -> %f - %f = %f\n",i/4,fabs(imag_out[i]), fabs(imag[i]),num_tol);
		if(fabs(num_tol)> .00001)
		//if((i/4)+1 != imag[i])
		{
			test_var = test_var + 1;
			//printf("imag [%d] -> %f - %f = %f\n",i ,fabs(imag_out[i]), fabs(imag[i]),num_tol);
		}

	}
	if(test_var != 0)
	{
		printf("Test failed %d", num);
	} else{
		printf("Test passed %d", num);
	}

	// -- - - - - - - -- compare HW and SW results - - - - -- - - -

	return 0;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void FPGA_info ()
{
	fpga_t * fpga;
	fpga_info_list info;
    int i;
// - - - - - - - - - - - -  Print info list - - - - - - - - - - - -
    if (fpga_list(&info) != 0) {
			printf("Error populating fpga_info_list\n");
			exit(0);
		}
		printf("Number of devices: %d\n", info.num_fpgas);
		for (i = 0; i < info.num_fpgas; i++) {
			printf("%d: id:%d\n", i, info.id[i]);
			printf("%d: num_chnls:%d\n", i, info.num_chnls[i]);
			printf("%d: name:%s\n", i, info.name[i]);
			printf("%d: vendor id:%04X\n", i, info.vendor_id[i]);
			printf("%d: device id:%04X\n", i, info.device_id[i]);
		}
// - - - - - - - - - - - -  Print info list - - - - - - - - - - - -
// - - - - - - - - - - - - Reset Hardware - - - - - - - - - - - - -
    	for (i = 0; i < info.num_fpgas; i++) 
        {
            fpga = fpga_open(i);
            if (fpga == NULL) {
                printf("Could not get FPGA %d\n", i);
                exit(0);
            }

            // Reset
            fpga_reset(fpga);

            // Done with device
            fpga_close(fpga);
        }
// - - - - - - - - - - - - Reset Hardware - - - - - - - - - - - - -
    return;
}


void radix4_fpga (int numWords, int id_FPGA, float *real, float *imag)
{
    // Each word is equal to 4 bytes
	//int chnl_real = 0; //Real data to channel 0, 2 and 4
   // int chnl_iamg = 1; //Imag data to channel 1, 3 and 5

 fpga_t * fpga;
        
    int sent_real,sent_imag; //To check send data
	int recvd_real, recvd_imag; //To check received data
	int chn_r,chn_imag;
/*
		chn_r = 0;
		chn_imag = 1;
		*/

	if(numWords == 1024)
	{
		chn_r = 0;
		chn_imag = 1;
	}
	else if(numWords == 4096)
	{
		chn_r = 2;
		chn_imag = 3;
	}
	else
	{
		chn_r = 4;
		chn_imag = 5;
	}


    // Get the device with id
    fpga = fpga_open(id_FPGA);
    if (fpga == NULL) {
        printf("Could not get FPGA %d\n", id_FPGA);
        exit(0);
    }

// - - - - - - - - - - - Send the data - - - - - - - - - - - - - - - - - -

	sent_real = fpga_send(fpga, chn_r, real, numWords, 0, 0, 0);
	printf("words sent through real CH: %d\n", sent_real);


    sent_imag = fpga_send(fpga, chn_imag, imag, numWords, 0, 0, 0);
    printf("words sent through imag CH: %d\n", sent_imag);


// - - - - - - - - - - - Recv the data - - - - - - - - - - - - - - - - - -
  //  if ((sent_real != 0) && (sent_imag != 0) ) {

		recvd_real = fpga_recv(fpga, chn_r, real, numWords, 0);
        printf("words recv real CH: %d\n", recvd_real);
	
		recvd_imag = fpga_recv(fpga, chn_imag, imag, numWords, 0);
        printf("words recv imag CH: %d\n", recvd_imag);
  //  }
	
	fpga_reset(fpga);
    fpga_close(fpga);

    return;

}