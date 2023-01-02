// ==============================================================
// File generated on Sun Mar 28 22:20:02 -0600 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Reorder_fft_lut_rdEe_H__
#define __Reorder_fft_lut_rdEe_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Reorder_fft_lut_rdEe_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
  static const unsigned AddressRange = 2016;
  static const unsigned AddressWidth = 11;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Reorder_fft_lut_rdEe_ram) {
        ram[0] = "0b0000000001";
        ram[1] = "0b0000000010";
        ram[2] = "0b0000000011";
        ram[3] = "0b0000000100";
        ram[4] = "0b0000000101";
        ram[5] = "0b0000000110";
        ram[6] = "0b0000000111";
        ram[7] = "0b0000001000";
        ram[8] = "0b0000001001";
        ram[9] = "0b0000001010";
        ram[10] = "0b0000001011";
        ram[11] = "0b0000001100";
        ram[12] = "0b0000001101";
        ram[13] = "0b0000001110";
        ram[14] = "0b0000001111";
        ram[15] = "0b0000010000";
        ram[16] = "0b0000010001";
        ram[17] = "0b0000010010";
        ram[18] = "0b0000010011";
        ram[19] = "0b0000010100";
        ram[20] = "0b0000010101";
        ram[21] = "0b0000010110";
        ram[22] = "0b0000010111";
        ram[23] = "0b0000011000";
        ram[24] = "0b0000011001";
        ram[25] = "0b0000011010";
        ram[26] = "0b0000011011";
        ram[27] = "0b0000011100";
        ram[28] = "0b0000011101";
        ram[29] = "0b0000011110";
        ram[30] = "0b0000011111";
        ram[31] = "0b0000100000";
        ram[32] = "0b0000100001";
        ram[33] = "0b0000100010";
        ram[34] = "0b0000100011";
        ram[35] = "0b0000100100";
        ram[36] = "0b0000100101";
        ram[37] = "0b0000100110";
        ram[38] = "0b0000100111";
        ram[39] = "0b0000101000";
        ram[40] = "0b0000101001";
        ram[41] = "0b0000101010";
        ram[42] = "0b0000101011";
        ram[43] = "0b0000101100";
        ram[44] = "0b0000101101";
        ram[45] = "0b0000101110";
        ram[46] = "0b0000101111";
        ram[47] = "0b0000110000";
        ram[48] = "0b0000110001";
        ram[49] = "0b0000110010";
        ram[50] = "0b0000110011";
        ram[51] = "0b0000110100";
        ram[52] = "0b0000110101";
        ram[53] = "0b0000110110";
        ram[54] = "0b0000110111";
        ram[55] = "0b0000111000";
        ram[56] = "0b0000111001";
        ram[57] = "0b0000111010";
        ram[58] = "0b0000111011";
        ram[59] = "0b0000111100";
        ram[60] = "0b0000111101";
        ram[61] = "0b0000111110";
        ram[62] = "0b0000111111";
        ram[63] = "0b0001000001";
        ram[64] = "0b0001000010";
        ram[65] = "0b0001000011";
        ram[66] = "0b0001000100";
        ram[67] = "0b0001000101";
        ram[68] = "0b0001000110";
        ram[69] = "0b0001000111";
        ram[70] = "0b0001001000";
        ram[71] = "0b0001001001";
        ram[72] = "0b0001001010";
        ram[73] = "0b0001001011";
        ram[74] = "0b0001001100";
        ram[75] = "0b0001001101";
        ram[76] = "0b0001001110";
        ram[77] = "0b0001001111";
        ram[78] = "0b0001010001";
        ram[79] = "0b0001010010";
        ram[80] = "0b0001010011";
        ram[81] = "0b0001010100";
        ram[82] = "0b0001010101";
        ram[83] = "0b0001010110";
        ram[84] = "0b0001010111";
        ram[85] = "0b0001011000";
        ram[86] = "0b0001011001";
        ram[87] = "0b0001011010";
        ram[88] = "0b0001011011";
        ram[89] = "0b0001011100";
        ram[90] = "0b0001011101";
        ram[91] = "0b0001011110";
        ram[92] = "0b0001011111";
        ram[93] = "0b0001100000";
        ram[94] = "0b0001100001";
        ram[95] = "0b0001100010";
        ram[96] = "0b0001100011";
        ram[97] = "0b0001100100";
        ram[98] = "0b0001100101";
        ram[99] = "0b0001100110";
        ram[100] = "0b0001100111";
        ram[101] = "0b0001101000";
        ram[102] = "0b0001101001";
        ram[103] = "0b0001101010";
        ram[104] = "0b0001101011";
        ram[105] = "0b0001101100";
        ram[106] = "0b0001101101";
        ram[107] = "0b0001101110";
        ram[108] = "0b0001101111";
        ram[109] = "0b0001110000";
        ram[110] = "0b0001110001";
        ram[111] = "0b0001110010";
        ram[112] = "0b0001110011";
        ram[113] = "0b0001110100";
        ram[114] = "0b0001110101";
        ram[115] = "0b0001110110";
        ram[116] = "0b0001110111";
        ram[117] = "0b0001111000";
        ram[118] = "0b0001111001";
        ram[119] = "0b0001111010";
        ram[120] = "0b0001111011";
        ram[121] = "0b0001111100";
        ram[122] = "0b0001111101";
        ram[123] = "0b0001111110";
        ram[124] = "0b0001111111";
        ram[125] = "0b0010000001";
        ram[126] = "0b0010000010";
        ram[127] = "0b0010000011";
        ram[128] = "0b0010000100";
        ram[129] = "0b0010000101";
        ram[130] = "0b0010000110";
        ram[131] = "0b0010000111";
        ram[132] = "0b0010001000";
        ram[133] = "0b0010001001";
        ram[134] = "0b0010001010";
        ram[135] = "0b0010001011";
        ram[136] = "0b0010001100";
        ram[137] = "0b0010001101";
        ram[138] = "0b0010001110";
        ram[139] = "0b0010001111";
        ram[140] = "0b0010010001";
        ram[141] = "0b0010010010";
        ram[142] = "0b0010010011";
        ram[143] = "0b0010010100";
        ram[144] = "0b0010010101";
        ram[145] = "0b0010010110";
        ram[146] = "0b0010010111";
        ram[147] = "0b0010011000";
        ram[148] = "0b0010011001";
        ram[149] = "0b0010011010";
        ram[150] = "0b0010011011";
        ram[151] = "0b0010011100";
        ram[152] = "0b0010011101";
        ram[153] = "0b0010011110";
        ram[154] = "0b0010011111";
        ram[155] = "0b0010100001";
        ram[156] = "0b0010100010";
        ram[157] = "0b0010100011";
        ram[158] = "0b0010100100";
        ram[159] = "0b0010100101";
        ram[160] = "0b0010100110";
        ram[161] = "0b0010100111";
        ram[162] = "0b0010101000";
        ram[163] = "0b0010101001";
        ram[164] = "0b0010101010";
        ram[165] = "0b0010101011";
        ram[166] = "0b0010101100";
        ram[167] = "0b0010101101";
        ram[168] = "0b0010101110";
        ram[169] = "0b0010101111";
        ram[170] = "0b0010110000";
        ram[171] = "0b0010110001";
        ram[172] = "0b0010110010";
        ram[173] = "0b0010110011";
        ram[174] = "0b0010110100";
        ram[175] = "0b0010110101";
        ram[176] = "0b0010110110";
        ram[177] = "0b0010110111";
        ram[178] = "0b0010111000";
        ram[179] = "0b0010111001";
        ram[180] = "0b0010111010";
        ram[181] = "0b0010111011";
        ram[182] = "0b0010111100";
        ram[183] = "0b0010111101";
        ram[184] = "0b0010111110";
        ram[185] = "0b0010111111";
        ram[186] = "0b0011000001";
        ram[187] = "0b0011000010";
        ram[188] = "0b0011000011";
        ram[189] = "0b0011000100";
        ram[190] = "0b0011000101";
        ram[191] = "0b0011000110";
        ram[192] = "0b0011000111";
        ram[193] = "0b0011001000";
        ram[194] = "0b0011001001";
        ram[195] = "0b0011001010";
        ram[196] = "0b0011001011";
        ram[197] = "0b0011001100";
        ram[198] = "0b0011001101";
        ram[199] = "0b0011001110";
        ram[200] = "0b0011001111";
        ram[201] = "0b0011010001";
        ram[202] = "0b0011010010";
        ram[203] = "0b0011010011";
        ram[204] = "0b0011010100";
        ram[205] = "0b0011010101";
        ram[206] = "0b0011010110";
        ram[207] = "0b0011010111";
        ram[208] = "0b0011011000";
        ram[209] = "0b0011011001";
        ram[210] = "0b0011011010";
        ram[211] = "0b0011011011";
        ram[212] = "0b0011011100";
        ram[213] = "0b0011011101";
        ram[214] = "0b0011011110";
        ram[215] = "0b0011011111";
        ram[216] = "0b0011100001";
        ram[217] = "0b0011100010";
        ram[218] = "0b0011100011";
        ram[219] = "0b0011100100";
        ram[220] = "0b0011100101";
        ram[221] = "0b0011100110";
        ram[222] = "0b0011100111";
        ram[223] = "0b0011101000";
        ram[224] = "0b0011101001";
        ram[225] = "0b0011101010";
        ram[226] = "0b0011101011";
        ram[227] = "0b0011101100";
        ram[228] = "0b0011101101";
        ram[229] = "0b0011101110";
        ram[230] = "0b0011101111";
        ram[231] = "0b0011110001";
        ram[232] = "0b0011110010";
        ram[233] = "0b0011110011";
        ram[234] = "0b0011110100";
        ram[235] = "0b0011110101";
        ram[236] = "0b0011110110";
        ram[237] = "0b0011110111";
        ram[238] = "0b0011111000";
        ram[239] = "0b0011111001";
        ram[240] = "0b0011111010";
        ram[241] = "0b0011111011";
        ram[242] = "0b0011111100";
        ram[243] = "0b0011111101";
        ram[244] = "0b0011111110";
        ram[245] = "0b0011111111";
        ram[246] = "0b0100000001";
        ram[247] = "0b0100000010";
        ram[248] = "0b0100000011";
        ram[249] = "0b0100000101";
        ram[250] = "0b0100000110";
        ram[251] = "0b0100000111";
        ram[252] = "0b0100001000";
        ram[253] = "0b0100001001";
        ram[254] = "0b0100001010";
        ram[255] = "0b0100001011";
        ram[256] = "0b0100001100";
        ram[257] = "0b0100001101";
        ram[258] = "0b0100001110";
        ram[259] = "0b0100001111";
        ram[260] = "0b0100010001";
        ram[261] = "0b0100010010";
        ram[262] = "0b0100010011";
        ram[263] = "0b0100010100";
        ram[264] = "0b0100010101";
        ram[265] = "0b0100010110";
        ram[266] = "0b0100010111";
        ram[267] = "0b0100011000";
        ram[268] = "0b0100011001";
        ram[269] = "0b0100011010";
        ram[270] = "0b0100011011";
        ram[271] = "0b0100011100";
        ram[272] = "0b0100011101";
        ram[273] = "0b0100011110";
        ram[274] = "0b0100011111";
        ram[275] = "0b0100100001";
        ram[276] = "0b0100100010";
        ram[277] = "0b0100100011";
        ram[278] = "0b0100100100";
        ram[279] = "0b0100100101";
        ram[280] = "0b0100100110";
        ram[281] = "0b0100100111";
        ram[282] = "0b0100101000";
        ram[283] = "0b0100101001";
        ram[284] = "0b0100101010";
        ram[285] = "0b0100101011";
        ram[286] = "0b0100101100";
        ram[287] = "0b0100101101";
        ram[288] = "0b0100101110";
        ram[289] = "0b0100101111";
        ram[290] = "0b0100110001";
        ram[291] = "0b0100110010";
        ram[292] = "0b0100110011";
        ram[293] = "0b0100110100";
        ram[294] = "0b0100110101";
        ram[295] = "0b0100110110";
        ram[296] = "0b0100110111";
        ram[297] = "0b0100111000";
        ram[298] = "0b0100111001";
        ram[299] = "0b0100111010";
        ram[300] = "0b0100111011";
        ram[301] = "0b0100111100";
        ram[302] = "0b0100111101";
        ram[303] = "0b0100111110";
        ram[304] = "0b0100111111";
        ram[305] = "0b0101000001";
        ram[306] = "0b0101000010";
        ram[307] = "0b0101000011";
        ram[308] = "0b0101000101";
        ram[309] = "0b0101000110";
        ram[310] = "0b0101000111";
        ram[311] = "0b0101001000";
        ram[312] = "0b0101001001";
        ram[313] = "0b0101001010";
        ram[314] = "0b0101001011";
        ram[315] = "0b0101001100";
        ram[316] = "0b0101001101";
        ram[317] = "0b0101001110";
        ram[318] = "0b0101001111";
        ram[319] = "0b0101010001";
        ram[320] = "0b0101010010";
        ram[321] = "0b0101010011";
        ram[322] = "0b0101010101";
        ram[323] = "0b0101010110";
        ram[324] = "0b0101010111";
        ram[325] = "0b0101011000";
        ram[326] = "0b0101011001";
        ram[327] = "0b0101011010";
        ram[328] = "0b0101011011";
        ram[329] = "0b0101011100";
        ram[330] = "0b0101011101";
        ram[331] = "0b0101011110";
        ram[332] = "0b0101011111";
        ram[333] = "0b0101100001";
        ram[334] = "0b0101100010";
        ram[335] = "0b0101100011";
        ram[336] = "0b0101100100";
        ram[337] = "0b0101100101";
        ram[338] = "0b0101100110";
        ram[339] = "0b0101100111";
        ram[340] = "0b0101101000";
        ram[341] = "0b0101101001";
        ram[342] = "0b0101101010";
        ram[343] = "0b0101101011";
        ram[344] = "0b0101101100";
        ram[345] = "0b0101101101";
        ram[346] = "0b0101101110";
        ram[347] = "0b0101101111";
        ram[348] = "0b0101110001";
        ram[349] = "0b0101110010";
        ram[350] = "0b0101110011";
        ram[351] = "0b0101110100";
        ram[352] = "0b0101110101";
        ram[353] = "0b0101110110";
        ram[354] = "0b0101110111";
        ram[355] = "0b0101111000";
        ram[356] = "0b0101111001";
        ram[357] = "0b0101111010";
        ram[358] = "0b0101111011";
        ram[359] = "0b0101111100";
        ram[360] = "0b0101111101";
        ram[361] = "0b0101111110";
        ram[362] = "0b0101111111";
        ram[363] = "0b0110000001";
        ram[364] = "0b0110000010";
        ram[365] = "0b0110000011";
        ram[366] = "0b0110000101";
        ram[367] = "0b0110000110";
        ram[368] = "0b0110000111";
        ram[369] = "0b0110001000";
        ram[370] = "0b0110001001";
        ram[371] = "0b0110001010";
        ram[372] = "0b0110001011";
        ram[373] = "0b0110001100";
        ram[374] = "0b0110001101";
        ram[375] = "0b0110001110";
        ram[376] = "0b0110001111";
        ram[377] = "0b0110010001";
        ram[378] = "0b0110010010";
        ram[379] = "0b0110010011";
        ram[380] = "0b0110010101";
        ram[381] = "0b0110010110";
        ram[382] = "0b0110010111";
        ram[383] = "0b0110011000";
        ram[384] = "0b0110011001";
        ram[385] = "0b0110011010";
        ram[386] = "0b0110011011";
        ram[387] = "0b0110011100";
        ram[388] = "0b0110011101";
        ram[389] = "0b0110011110";
        ram[390] = "0b0110011111";
        ram[391] = "0b0110100001";
        ram[392] = "0b0110100010";
        ram[393] = "0b0110100011";
        ram[394] = "0b0110100101";
        ram[395] = "0b0110100110";
        ram[396] = "0b0110100111";
        ram[397] = "0b0110101000";
        ram[398] = "0b0110101001";
        ram[399] = "0b0110101010";
        ram[400] = "0b0110101011";
        ram[401] = "0b0110101100";
        ram[402] = "0b0110101101";
        ram[403] = "0b0110101110";
        ram[404] = "0b0110101111";
        ram[405] = "0b0110110001";
        ram[406] = "0b0110110010";
        ram[407] = "0b0110110011";
        ram[408] = "0b0110110100";
        ram[409] = "0b0110110101";
        ram[410] = "0b0110110110";
        ram[411] = "0b0110110111";
        ram[412] = "0b0110111000";
        ram[413] = "0b0110111001";
        ram[414] = "0b0110111010";
        ram[415] = "0b0110111011";
        ram[416] = "0b0110111100";
        ram[417] = "0b0110111101";
        ram[418] = "0b0110111110";
        ram[419] = "0b0110111111";
        ram[420] = "0b0111000001";
        ram[421] = "0b0111000010";
        ram[422] = "0b0111000011";
        ram[423] = "0b0111000101";
        ram[424] = "0b0111000110";
        ram[425] = "0b0111000111";
        ram[426] = "0b0111001000";
        ram[427] = "0b0111001001";
        ram[428] = "0b0111001010";
        ram[429] = "0b0111001011";
        ram[430] = "0b0111001100";
        ram[431] = "0b0111001101";
        ram[432] = "0b0111001110";
        ram[433] = "0b0111001111";
        ram[434] = "0b0111010001";
        ram[435] = "0b0111010010";
        ram[436] = "0b0111010011";
        ram[437] = "0b0111010101";
        ram[438] = "0b0111010110";
        ram[439] = "0b0111010111";
        ram[440] = "0b0111011000";
        ram[441] = "0b0111011001";
        ram[442] = "0b0111011010";
        ram[443] = "0b0111011011";
        ram[444] = "0b0111011100";
        ram[445] = "0b0111011101";
        ram[446] = "0b0111011110";
        ram[447] = "0b0111011111";
        ram[448] = "0b0111100001";
        ram[449] = "0b0111100010";
        ram[450] = "0b0111100011";
        ram[451] = "0b0111100101";
        ram[452] = "0b0111100110";
        ram[453] = "0b0111100111";
        ram[454] = "0b0111101000";
        ram[455] = "0b0111101001";
        ram[456] = "0b0111101010";
        ram[457] = "0b0111101011";
        ram[458] = "0b0111101100";
        ram[459] = "0b0111101101";
        ram[460] = "0b0111101110";
        ram[461] = "0b0111101111";
        ram[462] = "0b0111110001";
        ram[463] = "0b0111110010";
        ram[464] = "0b0111110011";
        ram[465] = "0b0111110101";
        ram[466] = "0b0111110110";
        ram[467] = "0b0111110111";
        ram[468] = "0b0111111000";
        ram[469] = "0b0111111001";
        ram[470] = "0b0111111010";
        ram[471] = "0b0111111011";
        ram[472] = "0b0111111100";
        ram[473] = "0b0111111101";
        ram[474] = "0b0111111110";
        ram[475] = "0b0111111111";
        ram[476] = "0b1000000001";
        ram[477] = "0b1000000010";
        ram[478] = "0b1000000011";
        ram[479] = "0b1000000101";
        for (unsigned i = 480; i < 2016 ; i = i + 1) {
            ram[i] = "0b0000000000";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(Reorder_fft_lut_rdEe) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 2016;
static const unsigned AddressWidth = 11;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Reorder_fft_lut_rdEe_ram* meminst;


SC_CTOR(Reorder_fft_lut_rdEe) {
meminst = new Reorder_fft_lut_rdEe_ram("Reorder_fft_lut_rdEe_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Reorder_fft_lut_rdEe() {
    delete meminst;
}


};//endmodule
#endif