
#include <stdlib.h>
#include <stdio.h>
#include "riffa.h"
#include "timer.h"

int main()
{
	GET_TIME_INIT(REPEAT_LOOP);
	GET_TIME_INIT_2(REPEAT_LOOP);
	GET_TIME_INIT_3(REPEAT_LOOP);
	GET_TIME_INIT_4(REPEAT_LOOP);
	GET_TIME_INIT_5(REPEAT_LOOP);
	GET_TIME_INIT_6(REPEAT_LOOP);

	unsigned t, num;
	num = 16384;

	//test1dFFT(num);
	printf("\n\n");


	/* corner turn test */
	unsigned i, j, x, y;
	x = 128;
	y = 128;

	float *in, *out, *in_2;
	in = (float*)malloc(x*y*sizeof(float));
	in_2 = (float*)malloc(((x*y*REPEAT_LOOP)+4)*sizeof(float));
	
	for(i=0; i < x*y; i++)
	{ 
		in[i] = i;
		in_2[i] = i;
	}

//	in_2[i] = x;
//	in_2[i+1] = y;
/*
	fpga_t * fpga;
	fpga = fpga_open(0);
   		 if (fpga == NULL) {
        printf("Could not get FPGA %d\n", 0);
        exit(0);
		}

*/

	int repeat = 10000;
unsigned long long start_cyc, stop_cyc,cyclesData;
cyclesData = 0;
for(i=0; i < repeat; i++) 
{
	printf("\n\n");
	start_cyc = cycles();
	out = cornerTurn(in, x, y);
	stop_cyc = cycles();
	cyclesData = stop_cyc - start_cyc + cyclesData;
}
	printf("\nCycles Transpose 128 x 128 = %lld\n\n",(cyclesData/repeat));
	
	int wait, aux;
	int send_transpose, recv_transpose;

	//for (j = 0; j < REPEAT_LOOP; j++)
//	{
// - - - - - - - -  - - - - -  - -- Transpose  HW - - - - - - - - - - - - - - - 
/*
	send_transpose = fpga_send(fpga, 0, in_2, 16384, 0, 1, 0);
		for(wait = 0; wait < num*3; wait++)
		{
	
				aux = aux +1;
				printf(" ");
		}
	
	recv_transpose = fpga_recv(fpga, 0, in_2, 16384, 0);
		//printf("words recv CH 6: %d\n", recv_transpose);
		fpga_reset(fpga);
*/
// - - - - - - - -  - - - - -  - -- Transpose  HW - - - - - - - - - - - - - - - 
//	}


	/*
	int test_var;
	float num_tol;
	
	for (i = 0; i < x*y; i = i+1)
	{
		num_tol = fabs(out[i]) - fabs(in_2[i]);
		//printf("Transpose [%d] -> %f - %f = %f\n",i,fabs(out[i]), fabs(in_2[i]),num_tol);

		if(fabs(num_tol) > .00001)
		//if((i/4)+1 != real[i])
		{
			test_var = test_var + 1;
			printf("Transpose [%d] -> %f - %f = %f\n",i,fabs(out[i]), fabs(in_2[i]),num_tol);
		}
	}

*/

	printf("\nsuccess!\n\n");
	return 0;
}



