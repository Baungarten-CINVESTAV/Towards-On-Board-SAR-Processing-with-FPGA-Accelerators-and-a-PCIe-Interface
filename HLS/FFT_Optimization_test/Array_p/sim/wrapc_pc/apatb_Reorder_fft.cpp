// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.3 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
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


// wrapc file define: "Real_0"
#define AUTOTB_TVIN_Real_0  "../tv/cdatafile/c.Reorder_fft.autotvin_Real_0.dat"
#define AUTOTB_TVOUT_Real_0  "../tv/cdatafile/c.Reorder_fft.autotvout_Real_0.dat"
// wrapc file define: "Real_1"
#define AUTOTB_TVIN_Real_1  "../tv/cdatafile/c.Reorder_fft.autotvin_Real_1.dat"
#define AUTOTB_TVOUT_Real_1  "../tv/cdatafile/c.Reorder_fft.autotvout_Real_1.dat"
// wrapc file define: "Real_2"
#define AUTOTB_TVIN_Real_2  "../tv/cdatafile/c.Reorder_fft.autotvin_Real_2.dat"
#define AUTOTB_TVOUT_Real_2  "../tv/cdatafile/c.Reorder_fft.autotvout_Real_2.dat"
// wrapc file define: "Real_3"
#define AUTOTB_TVIN_Real_3  "../tv/cdatafile/c.Reorder_fft.autotvin_Real_3.dat"
#define AUTOTB_TVOUT_Real_3  "../tv/cdatafile/c.Reorder_fft.autotvout_Real_3.dat"
// wrapc file define: "Imag_0"
#define AUTOTB_TVIN_Imag_0  "../tv/cdatafile/c.Reorder_fft.autotvin_Imag_0.dat"
#define AUTOTB_TVOUT_Imag_0  "../tv/cdatafile/c.Reorder_fft.autotvout_Imag_0.dat"
// wrapc file define: "Imag_1"
#define AUTOTB_TVIN_Imag_1  "../tv/cdatafile/c.Reorder_fft.autotvin_Imag_1.dat"
#define AUTOTB_TVOUT_Imag_1  "../tv/cdatafile/c.Reorder_fft.autotvout_Imag_1.dat"
// wrapc file define: "Imag_2"
#define AUTOTB_TVIN_Imag_2  "../tv/cdatafile/c.Reorder_fft.autotvin_Imag_2.dat"
#define AUTOTB_TVOUT_Imag_2  "../tv/cdatafile/c.Reorder_fft.autotvout_Imag_2.dat"
// wrapc file define: "Imag_3"
#define AUTOTB_TVIN_Imag_3  "../tv/cdatafile/c.Reorder_fft.autotvin_Imag_3.dat"
#define AUTOTB_TVOUT_Imag_3  "../tv/cdatafile/c.Reorder_fft.autotvout_Imag_3.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "Real_0"
#define AUTOTB_TVOUT_PC_Real_0  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Real_0.dat"
// tvout file define: "Real_1"
#define AUTOTB_TVOUT_PC_Real_1  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Real_1.dat"
// tvout file define: "Real_2"
#define AUTOTB_TVOUT_PC_Real_2  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Real_2.dat"
// tvout file define: "Real_3"
#define AUTOTB_TVOUT_PC_Real_3  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Real_3.dat"
// tvout file define: "Imag_0"
#define AUTOTB_TVOUT_PC_Imag_0  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Imag_0.dat"
// tvout file define: "Imag_1"
#define AUTOTB_TVOUT_PC_Imag_1  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Imag_1.dat"
// tvout file define: "Imag_2"
#define AUTOTB_TVOUT_PC_Imag_2  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Imag_2.dat"
// tvout file define: "Imag_3"
#define AUTOTB_TVOUT_PC_Imag_3  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Imag_3.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			Real_0_depth = 0;
			Real_1_depth = 0;
			Real_2_depth = 0;
			Real_3_depth = 0;
			Imag_0_depth = 0;
			Imag_1_depth = 0;
			Imag_2_depth = 0;
			Imag_3_depth = 0;
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
			total_list << "{Real_0 " << Real_0_depth << "}\n";
			total_list << "{Real_1 " << Real_1_depth << "}\n";
			total_list << "{Real_2 " << Real_2_depth << "}\n";
			total_list << "{Real_3 " << Real_3_depth << "}\n";
			total_list << "{Imag_0 " << Imag_0_depth << "}\n";
			total_list << "{Imag_1 " << Imag_1_depth << "}\n";
			total_list << "{Imag_2 " << Imag_2_depth << "}\n";
			total_list << "{Imag_3 " << Imag_3_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int Real_0_depth;
		int Real_1_depth;
		int Real_2_depth;
		int Real_3_depth;
		int Imag_0_depth;
		int Imag_1_depth;
		int Imag_2_depth;
		int Imag_3_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void Reorder_fft (
volatile float Real[1024],
volatile float Imag[1024]);

void AESL_WRAP_Reorder_fft (
volatile float Real[1024],
volatile float Imag[1024])
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


		// output port post check: "Real_0"
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_0, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_0, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Real_0, AESL_token); // data

			sc_bv<32> *Real_0_pc_buffer = new sc_bv<32>[256];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_0', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_0', possible cause: There are uninitialized variables in the C design." << endl;
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
					Real_0_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Real_0, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Real_0))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Real_0
				{
					// bitslice(31, 0)
					// {
						// celement: Real(31, 0)
						// {
							sc_lv<32>* Real_lv0_0_1020_4 = new sc_lv<32>[256];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Real(31, 0)
						{
							// carray: (0) => (1020) @ (4)
							for (int i_0 = 0; i_0 <= 1020; i_0 += 4)
							{
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									Real_lv0_0_1020_4[hls_map_index].range(31, 0) = sc_bv<32>(Real_0_pc_buffer[hls_map_index].range(31, 0));
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
							// carray: (0) => (1020) @ (4)
							for (int i_0 = 0; i_0 <= 1020; i_0 += 4)
							{
								// sub                    : i_0
								// ori_name               : Real[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Real[0]
								// output_left_conversion : *(int*)&Real[i_0]
								// output_type_conversion : (Real_lv0_0_1020_4[hls_map_index]).to_uint64()
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Real[i_0] = (Real_lv0_0_1020_4[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Real_0_pc_buffer;
		}

		// output port post check: "Real_1"
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_1, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_1, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Real_1, AESL_token); // data

			sc_bv<32> *Real_1_pc_buffer = new sc_bv<32>[256];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_1', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_1', possible cause: There are uninitialized variables in the C design." << endl;
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
					Real_1_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Real_1, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Real_1))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Real_1
				{
					// bitslice(31, 0)
					// {
						// celement: Real(31, 0)
						// {
							sc_lv<32>* Real_lv0_1_1021_4 = new sc_lv<32>[256];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Real(31, 0)
						{
							// carray: (1) => (1021) @ (4)
							for (int i_0 = 1; i_0 <= 1021; i_0 += 4)
							{
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									Real_lv0_1_1021_4[hls_map_index].range(31, 0) = sc_bv<32>(Real_1_pc_buffer[hls_map_index].range(31, 0));
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
							// carray: (1) => (1021) @ (4)
							for (int i_0 = 1; i_0 <= 1021; i_0 += 4)
							{
								// sub                    : i_0
								// ori_name               : Real[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Real[0]
								// output_left_conversion : *(int*)&Real[i_0]
								// output_type_conversion : (Real_lv0_1_1021_4[hls_map_index]).to_uint64()
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Real[i_0] = (Real_lv0_1_1021_4[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Real_1_pc_buffer;
		}

		// output port post check: "Real_2"
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_2, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_2, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Real_2, AESL_token); // data

			sc_bv<32> *Real_2_pc_buffer = new sc_bv<32>[256];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_2', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_2', possible cause: There are uninitialized variables in the C design." << endl;
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
					Real_2_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Real_2, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Real_2))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Real_2
				{
					// bitslice(31, 0)
					// {
						// celement: Real(31, 0)
						// {
							sc_lv<32>* Real_lv0_2_1022_4 = new sc_lv<32>[256];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Real(31, 0)
						{
							// carray: (2) => (1022) @ (4)
							for (int i_0 = 2; i_0 <= 1022; i_0 += 4)
							{
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									Real_lv0_2_1022_4[hls_map_index].range(31, 0) = sc_bv<32>(Real_2_pc_buffer[hls_map_index].range(31, 0));
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
							// carray: (2) => (1022) @ (4)
							for (int i_0 = 2; i_0 <= 1022; i_0 += 4)
							{
								// sub                    : i_0
								// ori_name               : Real[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Real[0]
								// output_left_conversion : *(int*)&Real[i_0]
								// output_type_conversion : (Real_lv0_2_1022_4[hls_map_index]).to_uint64()
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Real[i_0] = (Real_lv0_2_1022_4[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Real_2_pc_buffer;
		}

		// output port post check: "Real_3"
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_3, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Real_3, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Real_3, AESL_token); // data

			sc_bv<32> *Real_3_pc_buffer = new sc_bv<32>[256];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_3', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Real_3', possible cause: There are uninitialized variables in the C design." << endl;
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
					Real_3_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Real_3, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Real_3))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Real_3
				{
					// bitslice(31, 0)
					// {
						// celement: Real(31, 0)
						// {
							sc_lv<32>* Real_lv0_3_1023_4 = new sc_lv<32>[256];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Real(31, 0)
						{
							// carray: (3) => (1023) @ (4)
							for (int i_0 = 3; i_0 <= 1023; i_0 += 4)
							{
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									Real_lv0_3_1023_4[hls_map_index].range(31, 0) = sc_bv<32>(Real_3_pc_buffer[hls_map_index].range(31, 0));
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
							// carray: (3) => (1023) @ (4)
							for (int i_0 = 3; i_0 <= 1023; i_0 += 4)
							{
								// sub                    : i_0
								// ori_name               : Real[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Real[0]
								// output_left_conversion : *(int*)&Real[i_0]
								// output_type_conversion : (Real_lv0_3_1023_4[hls_map_index]).to_uint64()
								if (&(Real[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Real[i_0] = (Real_lv0_3_1023_4[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Real_3_pc_buffer;
		}

		// output port post check: "Imag_0"
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag_0, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag_0, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Imag_0, AESL_token); // data

			sc_bv<32> *Imag_0_pc_buffer = new sc_bv<32>[256];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag_0', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag_0', possible cause: There are uninitialized variables in the C design." << endl;
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
					Imag_0_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Imag_0, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Imag_0))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Imag_0
				{
					// bitslice(31, 0)
					// {
						// celement: Imag(31, 0)
						// {
							sc_lv<32>* Imag_lv0_0_1020_4 = new sc_lv<32>[256];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Imag(31, 0)
						{
							// carray: (0) => (1020) @ (4)
							for (int i_0 = 0; i_0 <= 1020; i_0 += 4)
							{
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									Imag_lv0_0_1020_4[hls_map_index].range(31, 0) = sc_bv<32>(Imag_0_pc_buffer[hls_map_index].range(31, 0));
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
							// carray: (0) => (1020) @ (4)
							for (int i_0 = 0; i_0 <= 1020; i_0 += 4)
							{
								// sub                    : i_0
								// ori_name               : Imag[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Imag[0]
								// output_left_conversion : *(int*)&Imag[i_0]
								// output_type_conversion : (Imag_lv0_0_1020_4[hls_map_index]).to_uint64()
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Imag[i_0] = (Imag_lv0_0_1020_4[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Imag_0_pc_buffer;
		}

		// output port post check: "Imag_1"
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag_1, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag_1, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Imag_1, AESL_token); // data

			sc_bv<32> *Imag_1_pc_buffer = new sc_bv<32>[256];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag_1', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag_1', possible cause: There are uninitialized variables in the C design." << endl;
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
					Imag_1_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Imag_1, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Imag_1))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Imag_1
				{
					// bitslice(31, 0)
					// {
						// celement: Imag(31, 0)
						// {
							sc_lv<32>* Imag_lv0_1_1021_4 = new sc_lv<32>[256];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Imag(31, 0)
						{
							// carray: (1) => (1021) @ (4)
							for (int i_0 = 1; i_0 <= 1021; i_0 += 4)
							{
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									Imag_lv0_1_1021_4[hls_map_index].range(31, 0) = sc_bv<32>(Imag_1_pc_buffer[hls_map_index].range(31, 0));
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
							// carray: (1) => (1021) @ (4)
							for (int i_0 = 1; i_0 <= 1021; i_0 += 4)
							{
								// sub                    : i_0
								// ori_name               : Imag[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Imag[0]
								// output_left_conversion : *(int*)&Imag[i_0]
								// output_type_conversion : (Imag_lv0_1_1021_4[hls_map_index]).to_uint64()
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Imag[i_0] = (Imag_lv0_1_1021_4[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Imag_1_pc_buffer;
		}

		// output port post check: "Imag_2"
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag_2, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag_2, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Imag_2, AESL_token); // data

			sc_bv<32> *Imag_2_pc_buffer = new sc_bv<32>[256];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag_2', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag_2', possible cause: There are uninitialized variables in the C design." << endl;
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
					Imag_2_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Imag_2, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Imag_2))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Imag_2
				{
					// bitslice(31, 0)
					// {
						// celement: Imag(31, 0)
						// {
							sc_lv<32>* Imag_lv0_2_1022_4 = new sc_lv<32>[256];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Imag(31, 0)
						{
							// carray: (2) => (1022) @ (4)
							for (int i_0 = 2; i_0 <= 1022; i_0 += 4)
							{
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									Imag_lv0_2_1022_4[hls_map_index].range(31, 0) = sc_bv<32>(Imag_2_pc_buffer[hls_map_index].range(31, 0));
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
							// carray: (2) => (1022) @ (4)
							for (int i_0 = 2; i_0 <= 1022; i_0 += 4)
							{
								// sub                    : i_0
								// ori_name               : Imag[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Imag[0]
								// output_left_conversion : *(int*)&Imag[i_0]
								// output_type_conversion : (Imag_lv0_2_1022_4[hls_map_index]).to_uint64()
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Imag[i_0] = (Imag_lv0_2_1022_4[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Imag_2_pc_buffer;
		}

		// output port post check: "Imag_3"
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag_3, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_Imag_3, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_Imag_3, AESL_token); // data

			sc_bv<32> *Imag_3_pc_buffer = new sc_bv<32>[256];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag_3', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'Imag_3', possible cause: There are uninitialized variables in the C design." << endl;
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
					Imag_3_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_Imag_3, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_Imag_3))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: Imag_3
				{
					// bitslice(31, 0)
					// {
						// celement: Imag(31, 0)
						// {
							sc_lv<32>* Imag_lv0_3_1023_4 = new sc_lv<32>[256];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Imag(31, 0)
						{
							// carray: (3) => (1023) @ (4)
							for (int i_0 = 3; i_0 <= 1023; i_0 += 4)
							{
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									Imag_lv0_3_1023_4[hls_map_index].range(31, 0) = sc_bv<32>(Imag_3_pc_buffer[hls_map_index].range(31, 0));
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
							// carray: (3) => (1023) @ (4)
							for (int i_0 = 3; i_0 <= 1023; i_0 += 4)
							{
								// sub                    : i_0
								// ori_name               : Imag[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Imag[0]
								// output_left_conversion : *(int*)&Imag[i_0]
								// output_type_conversion : (Imag_lv0_3_1023_4[hls_map_index]).to_uint64()
								if (&(Imag[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Imag[i_0] = (Imag_lv0_3_1023_4[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] Imag_3_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "Real_0"
		char* tvin_Real_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Real_0);
		char* tvout_Real_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Real_0);

		// "Real_1"
		char* tvin_Real_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Real_1);
		char* tvout_Real_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Real_1);

		// "Real_2"
		char* tvin_Real_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Real_2);
		char* tvout_Real_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Real_2);

		// "Real_3"
		char* tvin_Real_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Real_3);
		char* tvout_Real_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Real_3);

		// "Imag_0"
		char* tvin_Imag_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Imag_0);
		char* tvout_Imag_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Imag_0);

		// "Imag_1"
		char* tvin_Imag_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Imag_1);
		char* tvout_Imag_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Imag_1);

		// "Imag_2"
		char* tvin_Imag_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Imag_2);
		char* tvout_Imag_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Imag_2);

		// "Imag_3"
		char* tvin_Imag_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Imag_3);
		char* tvout_Imag_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_Imag_3);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_Real_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Real_0, tvin_Real_0);

		sc_bv<32>* Real_0_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Real_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (0) => (1020) @ (4)
					for (int i_0 = 0; i_0 <= 1020; i_0 += 4)
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
							Real_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_Real_0, "%s\n", (Real_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Real_0, tvin_Real_0);
		}

		tcl_file.set_num(256, &tcl_file.Real_0_depth);
		sprintf(tvin_Real_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Real_0, tvin_Real_0);

		// release memory allocation
		delete [] Real_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_Real_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Real_1, tvin_Real_1);

		sc_bv<32>* Real_1_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Real_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (1) => (1021) @ (4)
					for (int i_0 = 1; i_0 <= 1021; i_0 += 4)
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
							Real_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_Real_1, "%s\n", (Real_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Real_1, tvin_Real_1);
		}

		tcl_file.set_num(256, &tcl_file.Real_1_depth);
		sprintf(tvin_Real_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Real_1, tvin_Real_1);

		// release memory allocation
		delete [] Real_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_Real_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Real_2, tvin_Real_2);

		sc_bv<32>* Real_2_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Real_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (2) => (1022) @ (4)
					for (int i_0 = 2; i_0 <= 1022; i_0 += 4)
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
							Real_2_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_Real_2, "%s\n", (Real_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Real_2, tvin_Real_2);
		}

		tcl_file.set_num(256, &tcl_file.Real_2_depth);
		sprintf(tvin_Real_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Real_2, tvin_Real_2);

		// release memory allocation
		delete [] Real_2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_Real_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Real_3, tvin_Real_3);

		sc_bv<32>* Real_3_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Real_3
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (3) => (1023) @ (4)
					for (int i_0 = 3; i_0 <= 1023; i_0 += 4)
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
							Real_3_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_Real_3, "%s\n", (Real_3_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Real_3, tvin_Real_3);
		}

		tcl_file.set_num(256, &tcl_file.Real_3_depth);
		sprintf(tvin_Real_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Real_3, tvin_Real_3);

		// release memory allocation
		delete [] Real_3_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_Imag_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Imag_0, tvin_Imag_0);

		sc_bv<32>* Imag_0_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Imag_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (0) => (1020) @ (4)
					for (int i_0 = 0; i_0 <= 1020; i_0 += 4)
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
							Imag_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_Imag_0, "%s\n", (Imag_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Imag_0, tvin_Imag_0);
		}

		tcl_file.set_num(256, &tcl_file.Imag_0_depth);
		sprintf(tvin_Imag_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Imag_0, tvin_Imag_0);

		// release memory allocation
		delete [] Imag_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_Imag_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Imag_1, tvin_Imag_1);

		sc_bv<32>* Imag_1_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Imag_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (1) => (1021) @ (4)
					for (int i_0 = 1; i_0 <= 1021; i_0 += 4)
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
							Imag_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_Imag_1, "%s\n", (Imag_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Imag_1, tvin_Imag_1);
		}

		tcl_file.set_num(256, &tcl_file.Imag_1_depth);
		sprintf(tvin_Imag_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Imag_1, tvin_Imag_1);

		// release memory allocation
		delete [] Imag_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_Imag_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Imag_2, tvin_Imag_2);

		sc_bv<32>* Imag_2_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Imag_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (2) => (1022) @ (4)
					for (int i_0 = 2; i_0 <= 1022; i_0 += 4)
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
							Imag_2_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_Imag_2, "%s\n", (Imag_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Imag_2, tvin_Imag_2);
		}

		tcl_file.set_num(256, &tcl_file.Imag_2_depth);
		sprintf(tvin_Imag_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Imag_2, tvin_Imag_2);

		// release memory allocation
		delete [] Imag_2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_Imag_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Imag_3, tvin_Imag_3);

		sc_bv<32>* Imag_3_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Imag_3
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (3) => (1023) @ (4)
					for (int i_0 = 3; i_0 <= 1023; i_0 += 4)
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
							Imag_3_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_Imag_3, "%s\n", (Imag_3_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Imag_3, tvin_Imag_3);
		}

		tcl_file.set_num(256, &tcl_file.Imag_3_depth);
		sprintf(tvin_Imag_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Imag_3, tvin_Imag_3);

		// release memory allocation
		delete [] Imag_3_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		Reorder_fft(Real, Imag);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_Real_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Real_0, tvout_Real_0);

		sc_bv<32>* Real_0_tvout_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Real_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (0) => (1020) @ (4)
					for (int i_0 = 0; i_0 <= 1020; i_0 += 4)
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
							Real_0_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvout_Real_0, "%s\n", (Real_0_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Real_0, tvout_Real_0);
		}

		tcl_file.set_num(256, &tcl_file.Real_0_depth);
		sprintf(tvout_Real_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Real_0, tvout_Real_0);

		// release memory allocation
		delete [] Real_0_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_Real_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Real_1, tvout_Real_1);

		sc_bv<32>* Real_1_tvout_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Real_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (1) => (1021) @ (4)
					for (int i_0 = 1; i_0 <= 1021; i_0 += 4)
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
							Real_1_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvout_Real_1, "%s\n", (Real_1_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Real_1, tvout_Real_1);
		}

		tcl_file.set_num(256, &tcl_file.Real_1_depth);
		sprintf(tvout_Real_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Real_1, tvout_Real_1);

		// release memory allocation
		delete [] Real_1_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_Real_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Real_2, tvout_Real_2);

		sc_bv<32>* Real_2_tvout_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Real_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (2) => (1022) @ (4)
					for (int i_0 = 2; i_0 <= 1022; i_0 += 4)
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
							Real_2_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvout_Real_2, "%s\n", (Real_2_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Real_2, tvout_Real_2);
		}

		tcl_file.set_num(256, &tcl_file.Real_2_depth);
		sprintf(tvout_Real_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Real_2, tvout_Real_2);

		// release memory allocation
		delete [] Real_2_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_Real_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Real_3, tvout_Real_3);

		sc_bv<32>* Real_3_tvout_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Real_3
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Real(31, 0)
				{
					// carray: (3) => (1023) @ (4)
					for (int i_0 = 3; i_0 <= 1023; i_0 += 4)
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
							Real_3_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvout_Real_3, "%s\n", (Real_3_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Real_3, tvout_Real_3);
		}

		tcl_file.set_num(256, &tcl_file.Real_3_depth);
		sprintf(tvout_Real_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Real_3, tvout_Real_3);

		// release memory allocation
		delete [] Real_3_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_Imag_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Imag_0, tvout_Imag_0);

		sc_bv<32>* Imag_0_tvout_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Imag_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (0) => (1020) @ (4)
					for (int i_0 = 0; i_0 <= 1020; i_0 += 4)
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
							Imag_0_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvout_Imag_0, "%s\n", (Imag_0_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Imag_0, tvout_Imag_0);
		}

		tcl_file.set_num(256, &tcl_file.Imag_0_depth);
		sprintf(tvout_Imag_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Imag_0, tvout_Imag_0);

		// release memory allocation
		delete [] Imag_0_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_Imag_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Imag_1, tvout_Imag_1);

		sc_bv<32>* Imag_1_tvout_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Imag_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (1) => (1021) @ (4)
					for (int i_0 = 1; i_0 <= 1021; i_0 += 4)
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
							Imag_1_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvout_Imag_1, "%s\n", (Imag_1_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Imag_1, tvout_Imag_1);
		}

		tcl_file.set_num(256, &tcl_file.Imag_1_depth);
		sprintf(tvout_Imag_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Imag_1, tvout_Imag_1);

		// release memory allocation
		delete [] Imag_1_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_Imag_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Imag_2, tvout_Imag_2);

		sc_bv<32>* Imag_2_tvout_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Imag_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (2) => (1022) @ (4)
					for (int i_0 = 2; i_0 <= 1022; i_0 += 4)
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
							Imag_2_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvout_Imag_2, "%s\n", (Imag_2_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Imag_2, tvout_Imag_2);
		}

		tcl_file.set_num(256, &tcl_file.Imag_2_depth);
		sprintf(tvout_Imag_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Imag_2, tvout_Imag_2);

		// release memory allocation
		delete [] Imag_2_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_Imag_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_Imag_3, tvout_Imag_3);

		sc_bv<32>* Imag_3_tvout_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: Imag_3
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Imag(31, 0)
				{
					// carray: (3) => (1023) @ (4)
					for (int i_0 = 3; i_0 <= 1023; i_0 += 4)
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
							Imag_3_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvout_Imag_3, "%s\n", (Imag_3_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_Imag_3, tvout_Imag_3);
		}

		tcl_file.set_num(256, &tcl_file.Imag_3_depth);
		sprintf(tvout_Imag_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_Imag_3, tvout_Imag_3);

		// release memory allocation
		delete [] Imag_3_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "Real_0"
		delete [] tvin_Real_0;
		delete [] tvout_Real_0;
		// release memory allocation: "Real_1"
		delete [] tvin_Real_1;
		delete [] tvout_Real_1;
		// release memory allocation: "Real_2"
		delete [] tvin_Real_2;
		delete [] tvout_Real_2;
		// release memory allocation: "Real_3"
		delete [] tvin_Real_3;
		delete [] tvout_Real_3;
		// release memory allocation: "Imag_0"
		delete [] tvin_Imag_0;
		delete [] tvout_Imag_0;
		// release memory allocation: "Imag_1"
		delete [] tvin_Imag_1;
		delete [] tvout_Imag_1;
		// release memory allocation: "Imag_2"
		delete [] tvin_Imag_2;
		delete [] tvout_Imag_2;
		// release memory allocation: "Imag_3"
		delete [] tvin_Imag_3;
		delete [] tvout_Imag_3;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

