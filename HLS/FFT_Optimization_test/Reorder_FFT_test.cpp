#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <complex>
#include <stdio.h>

#include "FFT_reorder.h"

#define N 1025
#define N_2 1024
#define TOL 0.00001 //error tolerance



int main()
{
// -------------------LOAD INIT VALUE -----------------------------------------------
	int i=1, retval=0; // i = auxiliar, retval = return value
	float num_tol;	   // subtraction of error tolerance
	static float Reales_inv[N], Imag_inv[N];
	static float Real_r[N], Imag_r[N];
	static float Real_r_2[N_2], Imag_r_2[N_2];
	static float Real_out[N], Imag_out[N];

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
// -------------------LOAD INIT VALUE -----------------------------------------------

// -------------------Call function HLS -----------------------------------------------
	 for(i=0;i<N_2;i++){
		 Real_r_2[i] = Real_r[i+1];
		 Imag_r_2[i] = Imag_r[i+1];
	 }

	 Reorder_fft(&Real_r_2[0],&Imag_r_2[0]);
// -------------------Call function HLS -----------------------------------------------


// -------------- Load txt binary invert ---------------------
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
// -------------- Load txt binary invert ---------------------

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


	if (retval != 0) {
		printf("Test failed  !!!\n");
		retval=1;
		}
	else {
		printf("Test passed !\n");
	  }

	return retval;
}

