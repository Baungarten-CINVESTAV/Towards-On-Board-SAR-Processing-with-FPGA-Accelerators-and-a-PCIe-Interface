
#include "FFT_reorder.h"
#define N 1024
#define leng_reorder 480

void Reorder_fft(volatile float Real[N],volatile float Imag[N]){
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INTERFACE bram port=Real
#pragma HLS INTERFACE bram port=Imag


//#pragma HLS RESOURCE variable=Real core=RAM_1P_BRAM
//#pragma HLS RESOURCE variable=Imag core=RAM_1P_BRAM


/*
#pragma HLS INTERFACE m_axi depth=1024 port=Imag_out  bundle=MASTER_BUS
#pragma HLS INTERFACE m_axi depth=1024 port=Real_out bundle=MASTER_BUS
#pragma HLS INTERFACE m_axi depth=1024 port=Imag bundle=MASTER_BUS
#pragma HLS INTERFACE m_axi depth=1024 port=Real bundle=MASTER_BUS
*/
	unsigned ind1, ind2, ind3; // Data memory
	int c, c_aux, less2, i; // Counter
	float sign[4] = {1, -1, 1, -1};
	float signRE[4] = {1, 1, -1, -1};
	float signIM[4] = {1, -1, -1, 1};
	int lut_reorder_I[leng_reorder] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,65,66,67,69,70,71,72,73,74,75,76,77,78,79,81,82,83,85,86,87,88,89,90,91,92,93,94,95,97,98,99,101,102,103,104,105,106,107,108,109,110,111,113,114,115,117,118,119,120,121,122,123,124,125,126,127,129,130,131,133,134,135,137,138,139,140,141,142,143,145,146,147,149,150,151,153,154,155,156,157,158,159,161,162,163,165,166,167,169,170,171,172,173,174,175,177,178,179,181,182,183,185,186,187,188,189,190,191,193,194,195,197,198,199,201,202,203,205,206,207,209,210,211,213,214,215,217,218,219,221,222,223,225,226,227,229,230,231,233,234,235,237,238,239,241,242,243,245,246,247,249,250,251,253,254,255,258,259,261,262,263,265,266,267,269,270,271,274,275,277,278,279,281,282,283,285,286,287,290,291,293,294,295,297,298,299,301,302,303,306,307,309,310,311,313,314,315,317,318,319,322,323,326,327,329,330,331,333,334,335,338,339,342,343,345,346,347,349,350,351,354,355,358,359,361,362,363,365,366,367,370,371,374,375,377,378,379,381,382,383,386,387,390,391,394,395,397,398,399,402,403,406,407,410,411,413,414,415,418,419,422,423,426,427,429,430,431,434,435,438,439,442,443,445,446,447,450,451,454,455,458,459,462,463,466,467,470,471,474,475,478,479,482,483,486,487,490,491,494,495,498,499,502,503,506,507,510,511,515,518,519,522,523,526,527,531,534,535,538,539,542,543,547,550,551,554,555,558,559,563,566,567,570,571,574,575,579,583,586,587,590,591,595,599,602,603,606,607,611,615,618,619,622,623,627,631,634,635,638,639,643,647,651,654,655,659,663,667,670,671,675,679,683,686,687,691,695,699,702,703,707,711,715,719,723,727,731,735,739,743,747,751,755,759,763,767,775,779,783,791,795,799,807,811,815,823,827,831,843,847,859,863,875,879,891,895,911,927,943,959};
	int lut_reorder_J[leng_reorder] = {256,512,768,64,320,576,832,128,384,640,896,192,448,704,960,272,528,784,80,336,592,848,144,400,656,912,208,464,720,976,288,544,800,96,352,608,864,160,416,672,928,224,480,736,992,304,560,816,112,368,624,880,176,432,688,944,240,496,752,1008,260,516,772,324,580,836,132,388,644,900,196,452,708,964,276,532,788,340,596,852,148,404,660,916,212,468,724,980,292,548,804,356,612,868,164,420,676,932,228,484,740,996,308,564,820,372,628,884,180,436,692,948,244,500,756,1012,264,520,776,328,584,840,392,648,904,200,456,712,968,280,536,792,344,600,856,408,664,920,216,472,728,984,296,552,808,360,616,872,424,680,936,232,488,744,1000,312,568,824,376,632,888,440,696,952,248,504,760,1016,268,524,780,332,588,844,396,652,908,460,716,972,284,540,796,348,604,860,412,668,924,476,732,988,300,556,812,364,620,876,428,684,940,492,748,1004,316,572,828,380,636,892,444,700,956,508,764,1020,513,769,321,577,833,385,641,897,449,705,961,529,785,337,593,849,401,657,913,465,721,977,545,801,353,609,865,417,673,929,481,737,993,561,817,369,625,881,433,689,945,497,753,1009,517,773,581,837,389,645,901,453,709,965,533,789,597,853,405,661,917,469,725,981,549,805,613,869,421,677,933,485,741,997,565,821,629,885,437,693,949,501,757,1013,521,777,585,841,649,905,457,713,969,537,793,601,857,665,921,473,729,985,553,809,617,873,681,937,489,745,1001,569,825,633,889,697,953,505,761,1017,525,781,589,845,653,909,717,973,541,797,605,861,669,925,733,989,557,813,621,877,685,941,749,1005,573,829,637,893,701,957,765,1021,770,578,834,642,898,706,962,786,594,850,658,914,722,978,802,610,866,674,930,738,994,818,626,882,690,946,754,1010,774,838,646,902,710,966,790,854,662,918,726,982,806,870,678,934,742,998,822,886,694,950,758,1014,778,842,906,714,970,794,858,922,730,986,810,874,938,746,1002,826,890,954,762,1018,782,846,910,974,798,862,926,990,814,878,942,1006,830,894,958,1022,835,899,963,851,915,979,867,931,995,883,947,1011,903,967,919,983,935,999,951,1015,971,987,1003,1019};
	int indexI, indexJ; // Number array
	float tempr,tempi;	// Valiu in the array

	float RE_vec_128_a,			IM_vec_128_a,
	   	   RE_vec_128_b,			IM_vec_128_b,
		   RE_vec_128_c[2],			IM_vec_128_c[2],
		   RE_vec_128_d[2],		    IM_vec_128_d[2],
		   RE_sum_128_ab[4],		IM_sum_128_ab[4],
		   RE_sum_128_cd[4],		IM_sum_128_cd[4],
		   RE_out_vec_128_a[4],		IM_out_vec_128_a[4];

for(c=0; c<N ; c +=4){
//#pragma HLS UNROLL factor=4
		ind1   = 1 + c;
		ind2   = 2 + c;
		ind3   = 3 + c;
// ----- Real part---------------------------------
		RE_vec_128_a = Real[c];
		RE_vec_128_b = Real[ind2];
		RE_vec_128_c[0] = Real [ind1];
		RE_vec_128_c[1] = Imag[ind1];
		RE_vec_128_d[0] = Real [ind3];
		RE_vec_128_d[1] = Imag[ind3];
// ----- Real part---------------------------------

// ----- Imag part---------------------------------
		IM_vec_128_a = Imag[c];
		IM_vec_128_b = Imag[ind2];
		IM_vec_128_c[0] = Imag [ind1];
		IM_vec_128_c[1] = Real[ind1];
		IM_vec_128_d[0] = Imag [ind3];
		IM_vec_128_d[1] = Real[ind3];
// ----- Imag part---------------------------------

//------------------------FMADD---------------------------
for (c_aux = 0; c_aux < 4; c_aux +=1){
//#pragma HLS PIPELINE




			if(c_aux>1){ less2 = 2;}else {less2 = 0;}

			// ----- Real part---------------------------------
			RE_sum_128_ab[c_aux] = (sign[c_aux]*RE_vec_128_b)+RE_vec_128_a; //__M128_MM_FMADD_PS	(RE_sum_128_ab,    sign,   RE_vec_128_b,  RE_vec_128_a)
			RE_sum_128_cd[c_aux] = (sign[c_aux]*RE_vec_128_d[c_aux-less2])+RE_vec_128_c[c_aux-less2]; //__M128_MM_FMADD_PS	(RE_sum_128_cd,    sign,   RE_vec_128_d,  RE_vec_128_c)
			RE_out_vec_128_a[c_aux] = (signRE[c_aux]*RE_sum_128_cd[c_aux])+RE_sum_128_ab[c_aux]; //__M128_MM_FMADD_PS	(RE_out_vec_128_a, signRE, RE_sum_128_cd, RE_sum_128_ab)
			// ----- Real part---------------------------------

			// ----- Imag part---------------------------------
			IM_sum_128_ab[c_aux] = (sign[c_aux]*IM_vec_128_b)+IM_vec_128_a; //__M128_MM_FMADD_PS	(IM_sum_128_ab,    sign,   IM_vec_128_b,  IM_vec_128_a)
			IM_sum_128_cd[c_aux] = (sign[c_aux]*IM_vec_128_d[c_aux-less2])+IM_vec_128_c[c_aux-less2]; //__M128_MM_FMADD_PS	(IM_sum_128_cd,    sign,   IM_vec_128_d,  IM_vec_128_c)
			IM_out_vec_128_a[c_aux] = (signIM[c_aux]*IM_sum_128_cd[c_aux])+IM_sum_128_ab[c_aux];
			// ----- Imag part---------------------------------
			*(Real+c+c_aux) = RE_out_vec_128_a[c_aux];
			*(Imag+c+c_aux) = IM_out_vec_128_a[c_aux];

		}
//------------------------FMADD---------------------------
	}

	for (i = 0; i < leng_reorder; i++)
	{
//#pragma HLS PIPELINE

		/*Unrolling 1*******************************************/
		indexI 			= lut_reorder_I[i];
		indexJ 			= lut_reorder_J[i];
		//printf("indexI %d indexJ %d\n",indexI,indexJ);
		tempr     		= Real[indexI];
		tempi     		=  Imag[indexI];
		Real[indexI]	= Real[indexJ];
		Imag[indexI] 	=  Imag[indexJ];
		 Real[indexJ] 	= tempr;
		 Imag[indexJ] 	= tempi;
	}

}
