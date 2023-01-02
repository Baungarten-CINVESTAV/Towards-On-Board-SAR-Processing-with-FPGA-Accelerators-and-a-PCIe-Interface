// ==============================================================
// File generated on Sun Mar 28 22:24:10 -0600 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "num_word"
#define AUTOTB_TVIN_num_word  "../tv/cdatafile/c.Reorder_fft.autotvin_num_word.dat"
// wrapc file define: "Real_r"
#define AUTOTB_TVIN_Real_r  "../tv/cdatafile/c.Reorder_fft.autotvin_Real_r.dat"
#define AUTOTB_TVOUT_Real_r  "../tv/cdatafile/c.Reorder_fft.autotvout_Real_r.dat"
// wrapc file define: "Imag"
#define AUTOTB_TVIN_Imag  "../tv/cdatafile/c.Reorder_fft.autotvin_Imag.dat"
#define AUTOTB_TVOUT_Imag  "../tv/cdatafile/c.Reorder_fft.autotvout_Imag.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "Real_r"
#define AUTOTB_TVOUT_PC_Real_r  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Real_r.dat"
// tvout file define: "Imag"
#define AUTOTB_TVOUT_PC_Imag  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Imag.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			num_word_depth = 0;
			Real_r_depth = 0;
			Imag_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{num_word " << num_word_depth << "}\n";
			total_list << "{Real_r " << Real_r_depth << "}\n";
			total_list << "{Imag " << Imag_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int num_word_depth;
		int Real_r_depth;
		int Imag_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void Reorder_fft (
int num_word,
volatile float Real[16384],
volatile float Imag[16384]);

void AESL_WRAP_Reorder_fft (
int num_word,
volatile float Real[16384],
volatile float Imag[16384])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "Real_r"
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_r, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_r, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Real_r, AESL_token); // data

			sc_bv<32> *Real_r_pc_buffer = new sc_bv<32>[16384];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					Real_r_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Real_r, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Real_r))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Real_r
				{
					// bitslice(31, 0)
					// {
						// celement: Real(31, 0)
						// {
							sc_lv<32>* Real_lv0_0_16383_1 = new sc_lv<32>[16384];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Real(31, 0)
						{
							// carray: (0) => (16383) @ (1)
							for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
							{
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									Real_lv0_0_16383_1[hls_map_index].range(31, 0) = sc_bv<32>(Real_r_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Real(31, 0)
						{
							// carray: (0) => (16383) @ (1)
							for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : Real[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Real[0]
								// output_left_conversion : *(int*)&Real[i_0]
								// output_type_conversion : (Real_lv0_0_16383_1[hls_map_index]).to_uint64()
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Real[i_0] = (Real_lv0_0_16383_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Real_r_pc_buffer;
		}

		// output port post check: "Imag"
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Imag, AESL_token); // data

			sc_bv<32> *Imag_pc_buffer = new sc_bv<32>[16384];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					Imag_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Imag, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Imag))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Imag
				{
					// bitslice(31, 0)
					// {
						// celement: Imag(31, 0)
						// {
							sc_lv<32>* Imag_lv0_0_16383_1 = new sc_lv<32>[16384];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Imag(31, 0)
						{
							// carray: (0) => (16383) @ (1)
							for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
							{
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									Imag_lv0_0_16383_1[hls_map_index].range(31, 0) = sc_bv<32>(Imag_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Imag(31, 0)
						{
							// carray: (0) => (16383) @ (1)
							for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : Imag[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Imag[0]
								// output_left_conversion : *(int*)&Imag[i_0]
								// output_type_conversion : (Imag_lv0_0_16383_1[hls_map_index]).to_uint64()
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Imag[i_0] = (Imag_lv0_0_16383_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Imag_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "num_word"
		char* tvin_num_word = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_num_word);

		// "Real_r"
		char* tvin_Real_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Real_r);
		char* tvout_Real_r = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Real_r);

		// "Imag"
		char* tvin_Imag = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Imag);
		char* tvout_Imag = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Imag);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_num_word, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_num_word, tvin_num_word);

		sc_bv<32> num_word_tvin_wrapc_buffer;

		// RTL Name: num_word
		{
			// bitslice(31, 0)
			{
				// celement: num_word(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : num_word
						// sub_1st_elem          : 
						// ori_name_1st_elem     : num_word
						// regulate_c_name       : num_word
						// input_type_conversion : num_word
						if (&(num_word) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> num_word_tmp_mem;
							num_word_tmp_mem = num_word;
							num_word_tvin_wrapc_buffer.range(31, 0) = num_word_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_num_word, "%s\n", (num_word_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_num_word, tvin_num_word);
		}

		tcl_file.set_num(1, &tcl_file.num_word_depth);
		sprintf(tvin_num_word, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_num_word, tvin_num_word);

		// [[transaction]]
		sprintf(tvin_Real_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Real_r, tvin_Real_r);

		sc_bv<32>* Real_r_tvin_wrapc_buffer = new sc_bv<32>[16384];

		// RTL Name: Real_r
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (0) => (16383) @ (1)
					for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Real[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Real[0]
						// regulate_c_name       : Real
						// input_type_conversion : *(int*)&Real[i_0]
						if (&(Real[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> Real_tmp_mem;
							Real_tmp_mem = *(int*)&Real[i_0];
							Real_r_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16384; i++)
		{
			sprintf(tvin_Real_r, "%s\n", (Real_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Real_r, tvin_Real_r);
		}

		tcl_file.set_num(16384, &tcl_file.Real_r_depth);
		sprintf(tvin_Real_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Real_r, tvin_Real_r);

		// release memory allocation
		delete [] Real_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_Imag, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Imag, tvin_Imag);

		sc_bv<32>* Imag_tvin_wrapc_buffer = new sc_bv<32>[16384];

		// RTL Name: Imag
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (0) => (16383) @ (1)
					for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Imag[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Imag[0]
						// regulate_c_name       : Imag
						// input_type_conversion : *(int*)&Imag[i_0]
						if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> Imag_tmp_mem;
							Imag_tmp_mem = *(int*)&Imag[i_0];
							Imag_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16384; i++)
		{
			sprintf(tvin_Imag, "%s\n", (Imag_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Imag, tvin_Imag);
		}

		tcl_file.set_num(16384, &tcl_file.Imag_depth);
		sprintf(tvin_Imag, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Imag, tvin_Imag);

		// release memory allocation
		delete [] Imag_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		Reorder_fft(num_word, Real, Imag);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_Real_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Real_r, tvout_Real_r);

		sc_bv<32>* Real_r_tvout_wrapc_buffer = new sc_bv<32>[16384];

		// RTL Name: Real_r
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (0) => (16383) @ (1)
					for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Real[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Real[0]
						// regulate_c_name       : Real
						// input_type_conversion : *(int*)&Real[i_0]
						if (&(Real[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> Real_tmp_mem;
							Real_tmp_mem = *(int*)&Real[i_0];
							Real_r_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16384; i++)
		{
			sprintf(tvout_Real_r, "%s\n", (Real_r_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Real_r, tvout_Real_r);
		}

		tcl_file.set_num(16384, &tcl_file.Real_r_depth);
		sprintf(tvout_Real_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Real_r, tvout_Real_r);

		// release memory allocation
		delete [] Real_r_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_Imag, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Imag, tvout_Imag);

		sc_bv<32>* Imag_tvout_wrapc_buffer = new sc_bv<32>[16384];

		// RTL Name: Imag
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (0) => (16383) @ (1)
					for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Imag[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Imag[0]
						// regulate_c_name       : Imag
						// input_type_conversion : *(int*)&Imag[i_0]
						if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> Imag_tmp_mem;
							Imag_tmp_mem = *(int*)&Imag[i_0];
							Imag_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16384; i++)
		{
			sprintf(tvout_Imag, "%s\n", (Imag_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Imag, tvout_Imag);
		}

		tcl_file.set_num(16384, &tcl_file.Imag_depth);
		sprintf(tvout_Imag, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Imag, tvout_Imag);

		// release memory allocation
		delete [] Imag_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "num_word"
		delete [] tvin_num_word;
		// release memory allocation: "Real_r"
		delete [] tvin_Real_r;
		delete [] tvout_Real_r;
		// release memory allocation: "Imag"
		delete [] tvin_Imag;
		delete [] tvout_Imag;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

