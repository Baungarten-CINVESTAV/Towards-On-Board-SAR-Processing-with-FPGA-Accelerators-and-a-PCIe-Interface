
	#include <stdlib.h>
	#include <stdio.h>
	#include "riffa.h"
	#include "timer.h"

	void radix4_fpga (int numWords, int id_FPGA, float *real, float *imag);
	void FPGA_info ();


int test1dFFT(int num)
{
	int i, j;

	int wait;
	GET_TIME_INIT(REPEAT_LOOP);
	GET_TIME_INIT_2(REPEAT_LOOP);
	GET_TIME_INIT_3(REPEAT_LOOP);
	GET_TIME_INIT_4(REPEAT_LOOP);
		int sent, sent_2;
	int recvd, recvd_2;
//- - - - - - - - - - - - - - - -  FPGA VAR - - - - - - - - - - - - - - - -  
	 fpga_t * fpga;
        
    int sent_real,sent_imag; //To check send data
	int recvd_real, recvd_imag; //To check received data
	int chn_r,chn_imag;
//- - - - - - - - - - - - - - - -  FPGA VAR - - - - - - - - - - - - - - - -  
	unsigned long long start_cyc, stop_cyc;
	unsigned long long cyclesData[REPEAT_LOOP];
	unsigned long long cyclesData_2[REPEAT_LOOP];
	unsigned long long cyclesData_FFTW[REPEAT_LOOP];
	unsigned long long cyclesRandom, 	 cyclesMinSC, 		cyclesMedianSC;
	unsigned long long cyclesRandomFFTW, cyclesMinFFTW, 	cyclesMedianFFTW;

	float *real = NULL,
		  *imag = NULL;

	float *real_2 = NULL,
		  *imag_2 = NULL;

	posix_memalign((void**)&real, ALIGNMENT, num * sizeof(float));
	posix_memalign((void**)&imag, ALIGNMENT, num * sizeof(float));

	posix_memalign((void**)&real_2, ALIGNMENT, num*REPEAT_LOOP * sizeof(float));
	posix_memalign((void**)&imag_2, ALIGNMENT, num*REPEAT_LOOP * sizeof(float));

	#if FFTW == ON
		fftwf_complex *in;
		in = (fftwf_complex*)fftwf_malloc(sizeof(fftwf_complex) * num);
	#endif

	for (i = 0; i < num; i++)
	{
		real[i] = 1.85 + cos(0.125+(2*MPI*i+4)/num) + sin(0.125+(4.25*MPI*i+1.29)/num);
		imag[i] = 2.45 + sin(0.125+(2*MPI*i+1.29)/num);

		real_2[i] = 1.85 + cos(0.125+(2*MPI*i+4)/num) + sin(0.125+(4.25*MPI*i+1.29)/num);
		imag_2[i] = 2.45 + sin(0.125+(2*MPI*i+1.29)/num);

		#if FFTW == ON
			in[i][REAL] = real[i];
			in[i][IMAG] = imag[i];
		#endif
	}

	make_fft_plan(num);

	#if FFTW == ON
		fftwf_plan p1;
		p1 = fftwf_plan_dft_1d(num, in, in, FFTW_FORWARD, FFTW_OPT_MODE);s
	#endif
	// - - - - - - - -- - - - - - -  FPGA INIT - - - - - - -- - - - - - - - - -- - - -
		FPGA_info ();
		if(num == 1024)
		{
			chn_r = 0;
			chn_imag = 1;
		}
		else if(num == 4096)
		{
			chn_r = 2;
			chn_imag = 3;
		}
		else
		{
			chn_r = 4;
			chn_imag = 5;
		}

		 fpga = fpga_open(0);
   		 if (fpga == NULL) {
        printf("Could not get FPGA %d\n", 0);
        exit(0);
    }
		// - - - - - - - -- - - - - - -  FPGA INIT - - - - - - -- - - - - - - - - -- - - -
int aux = 0;


		GET_TIME_VAL(0);
		sent_real = fpga_send(fpga, chn_r, real_2, num*REPEAT_LOOP, 0, 1, 0);
		//printf("words sent through real CH: %d\n", sent_real);
		
		sent_imag = fpga_send(fpga, chn_imag, imag_2, num*REPEAT_LOOP, 0, 1, 0);
		//printf("words sent through imag CH: %d\n", sent_imag);
		GET_TIME_VAL_2(0);

		for(wait = 0; wait < num*3; wait++)
		{
	
				aux = aux +1;
				printf(" ");
		}
	
		// - - - - - - - - - - - Recv the data - - - - - - - - - - - - - - - - - -
		GET_TIME_VAL(1);
		recvd_real = fpga_recv(fpga, chn_r, real_2, num*REPEAT_LOOP, 0);
			//printf("words recv real CH: %d\n", recvd_real);
		
		recvd_imag = fpga_recv(fpga, chn_imag, imag_2, num*REPEAT_LOOP, 0);
			//printf("words recv imag CH: %d\n", recvd_imag);
		fpga_reset(fpga);
		// - - - - - - - - - - - Recv the data - - - - - - - - - - - - - - - - - -
		GET_TIME_VAL_2(1);

		
    	fpga_close(fpga);

	for (j = 0; j < REPEAT_LOOP; j++)
	{
		GET_TIME_VAL_3(j);
	//	start_cyc = cycles();
			radix4_k1(real, imag);
	//	stop_cyc = cycles();
		GET_TIME_VAL_4(j);
	//	cyclesData[j] = stop_cyc - start_cyc;

		#if FFTW == ON
			start_cyc = cycles();
				fftwf_execute(p1);
			stop_cyc = cycles();
			cyclesData_FFTW[j] = stop_cyc - start_cyc;
		#endif
	}

		double time_SW = 0;
			for (i = 0; i < REPEAT_LOOP; i++)
		{
			time_SW = fabs(TIME_VAL_TO_MS_4(i) - TIME_VAL_TO_MS_3(i)) + time_SW;
		}
		printf("\n\n Time SW: %lf\n",time_SW);


		double time_HW_send = 0, time_HW_recv = 0;

		time_HW_send = fabs(TIME_VAL_TO_MS_2(0) - TIME_VAL_TO_MS(0)) + time_HW_send;
		time_HW_recv = fabs(TIME_VAL_TO_MS_2(1) - TIME_VAL_TO_MS(1)) + time_HW_recv;

		printf("\n\n Time HW: %lf send\n",time_HW_send);
		printf("\n\n Time HW: %lf recv\n",time_HW_recv);

/*
	printf("\n\nsend bw: %f MB/s %fms\n",
		num*4.0/1024/1024/((TIME_VAL_TO_MS(1) - TIME_VAL_TO_MS(0))/1000.0),
		(TIME_VAL_TO_MS(1) - TIME_VAL_TO_MS(0)) );
*/

/*
	int half = (int)(REPEAT_LOOP/2-1);

	sortData_Cyc(cyclesData, REPEAT_LOOP);
	cyclesMinSC     = cyclesData[0];
	cyclesMedianSC  = cyclesData[half];

	#if FFTW == ON
	sortData_Cyc(cyclesData_FFTW, REPEAT_LOOP);
	cyclesMinFFTW    = cyclesData_FFTW[0];
	cyclesMedianFFTW = cyclesData_FFTW[half];
	#endif

	printf("\n  --------------- RECV ------------------------\n");
	printf("  FFT Size: %d | Repetitions: %d\n", num, (int)REPEAT_LOOP);
	printf("  ---------------------------------------------------\n");
	printf("  CYCLES \t VECFFT CYCLES \t FFTW CYCLES\n");
	printf("  ---------------------------------------------------\n");
	printf("  MIN  \t\t %llu \t\t\t %llu \n",  cyclesMinSC,     cyclesMinFFTW);
	printf("  MEDIAN \t %llu \t\t\t %llu \n",  cyclesMedianSC,  cyclesMedianFFTW);

	sortData_Cyc(cyclesData_2, REPEAT_LOOP);
	cyclesMinSC     = cyclesData_2[0];
	cyclesMedianSC  = cyclesData_2[half];

	printf("\n  ----------------  SEND  ---------------------------\n");
	printf("  FFT Size: %d | Repetitions: %d\n", num, (int)REPEAT_LOOP);
	printf("  ---------------------------------------------------\n");
	printf("  CYCLES \t VECFFT CYCLES \t FFTW CYCLES\n");
	printf("  ---------------------------------------------------\n");
	printf("  MIN  \t\t %llu \t\t\t %llu \n",  cyclesMinSC,     cyclesMinFFTW);
	printf("  MEDIAN \t %llu \t\t\t %llu \n",  cyclesMedianSC,  cyclesMedianFFTW);


*/
	// save the data
	FILE *send, *recv;
/*
	send = fopen("Send_hw_all","w+");
	for(i = 0; i < (REPEAT_LOOP ); i++)
	{
		fprintf(send,"%llu \n",cyclesData_2[i]);
	}
*/
	recv = fopen("sw_test_2","w+");
	for(i = 0; i < (REPEAT_LOOP ); i++)
	{
		fprintf(recv,"%llu \n",cyclesData[i]);
	}

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
	//printf("words sent through real CH: %d\n", sent_real);


    sent_imag = fpga_send(fpga, chn_imag, imag, numWords, 0, 0, 0);
    //printf("words sent through imag CH: %d\n", sent_imag);


// - - - - - - - - - - - Recv the data - - - - - - - - - - - - - - - - - -
  //  if ((sent_real != 0) && (sent_imag != 0) ) {

		recvd_real = fpga_recv(fpga, chn_r, real, numWords, 0);
        //printf("words recv real CH: %d\n", recvd_real);
	
		recvd_imag = fpga_recv(fpga, chn_imag, imag, numWords, 0);
       // printf("words recv imag CH: %d\n", recvd_imag);
  //  }
	
	fpga_reset(fpga);
    fpga_close(fpga);

    return;

}