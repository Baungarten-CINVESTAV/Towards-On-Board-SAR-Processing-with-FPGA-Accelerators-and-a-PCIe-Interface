#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <complex>
#include <stdio.h>

#include "FFT_reorder.h"

#define N_2 16384
#define TOL 0.00001 //error tolerance



int main()
{
	int N = 1024;
	int i=1, retval=0; // i = auxiliar, retval = return value
	float num_tol;	   // subtraction of error tolerance
	static float Reales_inv[16385], Imag_inv[16385];
	static float Real_r[16385], Imag_r[16385];
	static float Real_r_2[16385], Imag_r_2[16385];
	static float Real_out[16385], Imag_out[16385];
	////////////////////////////////test 1024////////////////////////////////////////////////
// -------------------LOAD 1024 INIT VALUE -----------------------------------------------
	FILE *fp_R;
	fp_R = fopen("Reales.txt", "rb");
	   while(fscanf(fp_R, "%f", Real_r)!=EOF){
		   Real_r[i] =Real_r[0];
		   i++;
	   }
	 fclose(fp_R);

	 i=1;
	FILE *fp_I;
	fp_I = fopen("Imag.txt", "rb");
	   while(fscanf(fp_I, "%f", Imag_r)!=EOF){
		   Imag_r[i] =Imag_r[0];
		   i++;
	   }
	 fclose(fp_I);
	 // -------------------LOAD 1024 INIT VALUE -----------------------------------------------

// -------------------Call function HLS -----------------------------------------------
	 for(i=0;i<N_2;i++){
		 Real_r_2[i] = Real_r[i+1];
		 Imag_r_2[i] = Imag_r[i+1];
	 }

	 Reorder_fft(1024,&Real_r_2[0],&Imag_r_2[0]);
// -------------------Call function HLS -----------------------------------------------

// -------------- Load 1024 txt binary invert ---------------------
	 i=1;
	FILE *fp_Rinv;
	fp_Rinv = fopen("Reales_ordered.txt", "rb");
	   while(fscanf(fp_Rinv, "%f", Reales_inv)!=EOF){
		   Reales_inv[i] =Reales_inv[0];
	   i++;
	   }
	 fclose(fp_Rinv);
	i=1;
	 i=1;
	FILE *fp_Iinv;
	fp_Iinv = fopen("Imag_ordered.txt", "rb");
	   while(fscanf(fp_Iinv, "%f", Imag_inv)!=EOF){
		   Imag_inv[i] =Imag_inv[0];
		   i++;
	   }
	 fclose(fp_Iinv);
	 // -------------- Load 1024 txt binary invert ---------------------

	 // --------------Compare the results file with the golden results---------------------
	for(i=1;i<N;i++){
		 num_tol = abs(Reales_inv[i]) - abs(Real_r_2[i-1]);
		if (abs(num_tol)>TOL) {
			retval ++;
		}
		 num_tol = abs(Imag_inv[i]) - abs(Imag_r_2[i-1]);
		if (abs(num_tol)>TOL) {
			retval ++;
		}
	}

////////////////////////////////test 1024////////////////////////////////////////////////
	if (retval != 0) {
		printf("Test failed  1024 !!!\n");
		retval=1;
		}
	else {
		printf("Test passed 1024 !\n");
	  }

////////////////////////////////test 4096////////////////////////////////////////////////
	N = 4096;
	i = 1;

	// -------------------LOAD 4096 INIT VALUE -----------------------------------------------

		fp_R = fopen("Reales_input_1_4096_2a.txt", "rb");
		   while(fscanf(fp_R, "%f", Real_r)!=EOF){
			   Real_r[i] =Real_r[0];
			   i++;
		   }
		 fclose(fp_R);

		 i=1;

		fp_I = fopen("Imag_input_1_4096_2a.txt", "rb");
		   while(fscanf(fp_I, "%f", Imag_r)!=EOF){
			   Imag_r[i] =Imag_r[0];
			   i++;
		   }
		 fclose(fp_I);
		 // -------------------LOAD 4096 INIT VALUE -----------------------------------------------

	// -------------------Call function HLS -----------------------------------------------
		 for(i=0;i<N_2;i++){
			 Real_r_2[i] = Real_r[i+1];
			 Imag_r_2[i] = Imag_r[i+1];
		 }

		 Reorder_fft(4096,&Real_r_2[0],&Imag_r_2[0]);
	// -------------------Call function HLS -----------------------------------------------


	// -------------- Load 4096 txt binary invert ---------------------
		 i=1;

		fp_Rinv = fopen("Reales_output_1_4096_2a.txt", "rb");
		   while(fscanf(fp_Rinv, "%f", Reales_inv)!=EOF){
			   Reales_inv[i] =Reales_inv[0];
		   i++;
		   }
		 fclose(fp_Rinv);
		i=1;
		 i=1;

		fp_Iinv = fopen("Imag_output_1_4096_2a.txt", "rb");
		   while(fscanf(fp_Iinv, "%f", Imag_inv)!=EOF){
			   Imag_inv[i] =Imag_inv[0];
			   i++;
		   }
		 fclose(fp_Iinv);
		 // -------------- Load 4096 txt binary invert ---------------------

		 // --------------Compare the results file with the golden results---------------------
		for(i=1;i<N;i++){
			 num_tol = abs(Reales_inv[i]) - abs(Real_r_2[i-1]);
			if (abs(num_tol)>TOL) {
				retval ++;
			}
			 num_tol = abs(Imag_inv[i]) - abs(Imag_r_2[i-1]);
			if (abs(num_tol)>TOL) {
				retval ++;
			}
		}



////////////////////////////////test 4096////////////////////////////////////////////////

		if (retval != 0) {
			printf("Test failed  4096 !!!\n");
			retval=1;
			}
		else {
			printf("Test passed 4096 !\n");
		  }

		////////////////////////////////test 16384////////////////////////////////////////////////
			N = 16384;
			i = 1;
			// -------------------LOAD 16384 INIT VALUE -----------------------------------------------

				fp_R = fopen("Reales_input_1_16384_2a.txt", "rb");
				   while(fscanf(fp_R, "%f", Real_r)!=EOF){
					   Real_r[i] =Real_r[0];
					   i++;
				   }
				 fclose(fp_R);

				 i=1;

				fp_I = fopen("Imag_input_1_16384_2a.txt", "rb");
				   while(fscanf(fp_I, "%f", Imag_r)!=EOF){
					   Imag_r[i] =Imag_r[0];
					   i++;
				   }
				 fclose(fp_I);
				 // -------------------LOAD 16384 INIT VALUE -----------------------------------------------

			// -------------------Call function HLS -----------------------------------------------
				 for(i=0;i<N_2;i++){
					 Real_r_2[i] = Real_r[i+1];
					 Imag_r_2[i] = Imag_r[i+1];
				 }

				 Reorder_fft(16384,&Real_r_2[0],&Imag_r_2[0]);
			// -------------------Call function HLS -----------------------------------------------


			// -------------- Load 16384 txt binary invert ---------------------
				 i=1;

				fp_Rinv = fopen("Reales_output_1_16384_2a.txt", "rb");
				   while(fscanf(fp_Rinv, "%f", Reales_inv)!=EOF){
					   Reales_inv[i] =Reales_inv[0];
				   i++;
				   }
				 fclose(fp_Rinv);
				i=1;
				 i=1;

				fp_Iinv = fopen("Imag_output_1_16384_2a.txt", "rb");
				   while(fscanf(fp_Iinv, "%f", Imag_inv)!=EOF){
					   Imag_inv[i] =Imag_inv[0];
					   i++;
				   }
				 fclose(fp_Iinv);
				 // -------------- Load 16384 txt binary invert ---------------------

				 // --------------Compare the results file with the golden results---------------------
				for(i=1;i<N;i++){
					 num_tol = abs(Reales_inv[i]) - abs(Real_r_2[i-1]);
					if (abs(num_tol)>TOL) {
						retval ++;
					}
					 num_tol = abs(Imag_inv[i]) - abs(Imag_r_2[i-1]);
					if (abs(num_tol)>TOL) {
						retval ++;
					}
				}



		////////////////////////////////test 16384////////////////////////////////////////////////


	if (retval != 0) {
		printf("Test failed  16384 !!!\n");
		retval=1;
		}
	else {
		printf("Test passed 16384 !\n");
	  }

	return retval;
}

