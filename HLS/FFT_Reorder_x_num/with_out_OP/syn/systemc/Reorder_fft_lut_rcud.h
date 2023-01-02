// ==============================================================
// File generated on Sun Mar 28 22:20:01 -0600 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Reorder_fft_lut_rcud_H__
#define __Reorder_fft_lut_rcud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Reorder_fft_lut_rcud_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
  static const unsigned AddressRange = 480;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Reorder_fft_lut_rcud_ram) {
        ram[0] = "0b0100000000";
        ram[1] = "0b1000000000";
        ram[2] = "0b1100000000";
        ram[3] = "0b0001000000";
        ram[4] = "0b0101000000";
        ram[5] = "0b1001000000";
        ram[6] = "0b1101000000";
        ram[7] = "0b0010000000";
        ram[8] = "0b0110000000";
        ram[9] = "0b1010000000";
        ram[10] = "0b1110000000";
        ram[11] = "0b0011000000";
        ram[12] = "0b0111000000";
        ram[13] = "0b1011000000";
        ram[14] = "0b1111000000";
        ram[15] = "0b0100010000";
        ram[16] = "0b1000010000";
        ram[17] = "0b1100010000";
        ram[18] = "0b0001010000";
        ram[19] = "0b0101010000";
        ram[20] = "0b1001010000";
        ram[21] = "0b1101010000";
        ram[22] = "0b0010010000";
        ram[23] = "0b0110010000";
        ram[24] = "0b1010010000";
        ram[25] = "0b1110010000";
        ram[26] = "0b0011010000";
        ram[27] = "0b0111010000";
        ram[28] = "0b1011010000";
        ram[29] = "0b1111010000";
        ram[30] = "0b0100100000";
        ram[31] = "0b1000100000";
        ram[32] = "0b1100100000";
        ram[33] = "0b0001100000";
        ram[34] = "0b0101100000";
        ram[35] = "0b1001100000";
        ram[36] = "0b1101100000";
        ram[37] = "0b0010100000";
        ram[38] = "0b0110100000";
        ram[39] = "0b1010100000";
        ram[40] = "0b1110100000";
        ram[41] = "0b0011100000";
        ram[42] = "0b0111100000";
        ram[43] = "0b1011100000";
        ram[44] = "0b1111100000";
        ram[45] = "0b0100110000";
        ram[46] = "0b1000110000";
        ram[47] = "0b1100110000";
        ram[48] = "0b0001110000";
        ram[49] = "0b0101110000";
        ram[50] = "0b1001110000";
        ram[51] = "0b1101110000";
        ram[52] = "0b0010110000";
        ram[53] = "0b0110110000";
        ram[54] = "0b1010110000";
        ram[55] = "0b1110110000";
        ram[56] = "0b0011110000";
        ram[57] = "0b0111110000";
        ram[58] = "0b1011110000";
        ram[59] = "0b1111110000";
        ram[60] = "0b0100000100";
        ram[61] = "0b1000000100";
        ram[62] = "0b1100000100";
        ram[63] = "0b0101000100";
        ram[64] = "0b1001000100";
        ram[65] = "0b1101000100";
        ram[66] = "0b0010000100";
        ram[67] = "0b0110000100";
        ram[68] = "0b1010000100";
        ram[69] = "0b1110000100";
        ram[70] = "0b0011000100";
        ram[71] = "0b0111000100";
        ram[72] = "0b1011000100";
        ram[73] = "0b1111000100";
        ram[74] = "0b0100010100";
        ram[75] = "0b1000010100";
        ram[76] = "0b1100010100";
        ram[77] = "0b0101010100";
        ram[78] = "0b1001010100";
        ram[79] = "0b1101010100";
        ram[80] = "0b0010010100";
        ram[81] = "0b0110010100";
        ram[82] = "0b1010010100";
        ram[83] = "0b1110010100";
        ram[84] = "0b0011010100";
        ram[85] = "0b0111010100";
        ram[86] = "0b1011010100";
        ram[87] = "0b1111010100";
        ram[88] = "0b0100100100";
        ram[89] = "0b1000100100";
        ram[90] = "0b1100100100";
        ram[91] = "0b0101100100";
        ram[92] = "0b1001100100";
        ram[93] = "0b1101100100";
        ram[94] = "0b0010100100";
        ram[95] = "0b0110100100";
        ram[96] = "0b1010100100";
        ram[97] = "0b1110100100";
        ram[98] = "0b0011100100";
        ram[99] = "0b0111100100";
        ram[100] = "0b1011100100";
        ram[101] = "0b1111100100";
        ram[102] = "0b0100110100";
        ram[103] = "0b1000110100";
        ram[104] = "0b1100110100";
        ram[105] = "0b0101110100";
        ram[106] = "0b1001110100";
        ram[107] = "0b1101110100";
        ram[108] = "0b0010110100";
        ram[109] = "0b0110110100";
        ram[110] = "0b1010110100";
        ram[111] = "0b1110110100";
        ram[112] = "0b0011110100";
        ram[113] = "0b0111110100";
        ram[114] = "0b1011110100";
        ram[115] = "0b1111110100";
        ram[116] = "0b0100001000";
        ram[117] = "0b1000001000";
        ram[118] = "0b1100001000";
        ram[119] = "0b0101001000";
        ram[120] = "0b1001001000";
        ram[121] = "0b1101001000";
        ram[122] = "0b0110001000";
        ram[123] = "0b1010001000";
        ram[124] = "0b1110001000";
        ram[125] = "0b0011001000";
        ram[126] = "0b0111001000";
        ram[127] = "0b1011001000";
        ram[128] = "0b1111001000";
        ram[129] = "0b0100011000";
        ram[130] = "0b1000011000";
        ram[131] = "0b1100011000";
        ram[132] = "0b0101011000";
        ram[133] = "0b1001011000";
        ram[134] = "0b1101011000";
        ram[135] = "0b0110011000";
        ram[136] = "0b1010011000";
        ram[137] = "0b1110011000";
        ram[138] = "0b0011011000";
        ram[139] = "0b0111011000";
        ram[140] = "0b1011011000";
        ram[141] = "0b1111011000";
        ram[142] = "0b0100101000";
        ram[143] = "0b1000101000";
        ram[144] = "0b1100101000";
        ram[145] = "0b0101101000";
        ram[146] = "0b1001101000";
        ram[147] = "0b1101101000";
        ram[148] = "0b0110101000";
        ram[149] = "0b1010101000";
        ram[150] = "0b1110101000";
        ram[151] = "0b0011101000";
        ram[152] = "0b0111101000";
        ram[153] = "0b1011101000";
        ram[154] = "0b1111101000";
        ram[155] = "0b0100111000";
        ram[156] = "0b1000111000";
        ram[157] = "0b1100111000";
        ram[158] = "0b0101111000";
        ram[159] = "0b1001111000";
        ram[160] = "0b1101111000";
        ram[161] = "0b0110111000";
        ram[162] = "0b1010111000";
        ram[163] = "0b1110111000";
        ram[164] = "0b0011111000";
        ram[165] = "0b0111111000";
        ram[166] = "0b1011111000";
        ram[167] = "0b1111111000";
        ram[168] = "0b0100001100";
        ram[169] = "0b1000001100";
        ram[170] = "0b1100001100";
        ram[171] = "0b0101001100";
        ram[172] = "0b1001001100";
        ram[173] = "0b1101001100";
        ram[174] = "0b0110001100";
        ram[175] = "0b1010001100";
        ram[176] = "0b1110001100";
        ram[177] = "0b0111001100";
        ram[178] = "0b1011001100";
        ram[179] = "0b1111001100";
        ram[180] = "0b0100011100";
        ram[181] = "0b1000011100";
        ram[182] = "0b1100011100";
        ram[183] = "0b0101011100";
        ram[184] = "0b1001011100";
        ram[185] = "0b1101011100";
        ram[186] = "0b0110011100";
        ram[187] = "0b1010011100";
        ram[188] = "0b1110011100";
        ram[189] = "0b0111011100";
        ram[190] = "0b1011011100";
        ram[191] = "0b1111011100";
        ram[192] = "0b0100101100";
        ram[193] = "0b1000101100";
        ram[194] = "0b1100101100";
        ram[195] = "0b0101101100";
        ram[196] = "0b1001101100";
        ram[197] = "0b1101101100";
        ram[198] = "0b0110101100";
        ram[199] = "0b1010101100";
        ram[200] = "0b1110101100";
        ram[201] = "0b0111101100";
        ram[202] = "0b1011101100";
        ram[203] = "0b1111101100";
        ram[204] = "0b0100111100";
        ram[205] = "0b1000111100";
        ram[206] = "0b1100111100";
        ram[207] = "0b0101111100";
        ram[208] = "0b1001111100";
        ram[209] = "0b1101111100";
        ram[210] = "0b0110111100";
        ram[211] = "0b1010111100";
        ram[212] = "0b1110111100";
        ram[213] = "0b0111111100";
        ram[214] = "0b1011111100";
        ram[215] = "0b1111111100";
        ram[216] = "0b1000000001";
        ram[217] = "0b1100000001";
        ram[218] = "0b0101000001";
        ram[219] = "0b1001000001";
        ram[220] = "0b1101000001";
        ram[221] = "0b0110000001";
        ram[222] = "0b1010000001";
        ram[223] = "0b1110000001";
        ram[224] = "0b0111000001";
        ram[225] = "0b1011000001";
        ram[226] = "0b1111000001";
        ram[227] = "0b1000010001";
        ram[228] = "0b1100010001";
        ram[229] = "0b0101010001";
        ram[230] = "0b1001010001";
        ram[231] = "0b1101010001";
        ram[232] = "0b0110010001";
        ram[233] = "0b1010010001";
        ram[234] = "0b1110010001";
        ram[235] = "0b0111010001";
        ram[236] = "0b1011010001";
        ram[237] = "0b1111010001";
        ram[238] = "0b1000100001";
        ram[239] = "0b1100100001";
        ram[240] = "0b0101100001";
        ram[241] = "0b1001100001";
        ram[242] = "0b1101100001";
        ram[243] = "0b0110100001";
        ram[244] = "0b1010100001";
        ram[245] = "0b1110100001";
        ram[246] = "0b0111100001";
        ram[247] = "0b1011100001";
        ram[248] = "0b1111100001";
        ram[249] = "0b1000110001";
        ram[250] = "0b1100110001";
        ram[251] = "0b0101110001";
        ram[252] = "0b1001110001";
        ram[253] = "0b1101110001";
        ram[254] = "0b0110110001";
        ram[255] = "0b1010110001";
        ram[256] = "0b1110110001";
        ram[257] = "0b0111110001";
        ram[258] = "0b1011110001";
        ram[259] = "0b1111110001";
        ram[260] = "0b1000000101";
        ram[261] = "0b1100000101";
        ram[262] = "0b1001000101";
        ram[263] = "0b1101000101";
        ram[264] = "0b0110000101";
        ram[265] = "0b1010000101";
        ram[266] = "0b1110000101";
        ram[267] = "0b0111000101";
        ram[268] = "0b1011000101";
        ram[269] = "0b1111000101";
        ram[270] = "0b1000010101";
        ram[271] = "0b1100010101";
        ram[272] = "0b1001010101";
        ram[273] = "0b1101010101";
        ram[274] = "0b0110010101";
        ram[275] = "0b1010010101";
        ram[276] = "0b1110010101";
        ram[277] = "0b0111010101";
        ram[278] = "0b1011010101";
        ram[279] = "0b1111010101";
        ram[280] = "0b1000100101";
        ram[281] = "0b1100100101";
        ram[282] = "0b1001100101";
        ram[283] = "0b1101100101";
        ram[284] = "0b0110100101";
        ram[285] = "0b1010100101";
        ram[286] = "0b1110100101";
        ram[287] = "0b0111100101";
        ram[288] = "0b1011100101";
        ram[289] = "0b1111100101";
        ram[290] = "0b1000110101";
        ram[291] = "0b1100110101";
        ram[292] = "0b1001110101";
        ram[293] = "0b1101110101";
        ram[294] = "0b0110110101";
        ram[295] = "0b1010110101";
        ram[296] = "0b1110110101";
        ram[297] = "0b0111110101";
        ram[298] = "0b1011110101";
        ram[299] = "0b1111110101";
        ram[300] = "0b1000001001";
        ram[301] = "0b1100001001";
        ram[302] = "0b1001001001";
        ram[303] = "0b1101001001";
        ram[304] = "0b1010001001";
        ram[305] = "0b1110001001";
        ram[306] = "0b0111001001";
        ram[307] = "0b1011001001";
        ram[308] = "0b1111001001";
        ram[309] = "0b1000011001";
        ram[310] = "0b1100011001";
        ram[311] = "0b1001011001";
        ram[312] = "0b1101011001";
        ram[313] = "0b1010011001";
        ram[314] = "0b1110011001";
        ram[315] = "0b0111011001";
        ram[316] = "0b1011011001";
        ram[317] = "0b1111011001";
        ram[318] = "0b1000101001";
        ram[319] = "0b1100101001";
        ram[320] = "0b1001101001";
        ram[321] = "0b1101101001";
        ram[322] = "0b1010101001";
        ram[323] = "0b1110101001";
        ram[324] = "0b0111101001";
        ram[325] = "0b1011101001";
        ram[326] = "0b1111101001";
        ram[327] = "0b1000111001";
        ram[328] = "0b1100111001";
        ram[329] = "0b1001111001";
        ram[330] = "0b1101111001";
        ram[331] = "0b1010111001";
        ram[332] = "0b1110111001";
        ram[333] = "0b0111111001";
        ram[334] = "0b1011111001";
        ram[335] = "0b1111111001";
        ram[336] = "0b1000001101";
        ram[337] = "0b1100001101";
        ram[338] = "0b1001001101";
        ram[339] = "0b1101001101";
        ram[340] = "0b1010001101";
        ram[341] = "0b1110001101";
        ram[342] = "0b1011001101";
        ram[343] = "0b1111001101";
        ram[344] = "0b1000011101";
        ram[345] = "0b1100011101";
        ram[346] = "0b1001011101";
        ram[347] = "0b1101011101";
        ram[348] = "0b1010011101";
        ram[349] = "0b1110011101";
        ram[350] = "0b1011011101";
        ram[351] = "0b1111011101";
        ram[352] = "0b1000101101";
        ram[353] = "0b1100101101";
        ram[354] = "0b1001101101";
        ram[355] = "0b1101101101";
        ram[356] = "0b1010101101";
        ram[357] = "0b1110101101";
        ram[358] = "0b1011101101";
        ram[359] = "0b1111101101";
        ram[360] = "0b1000111101";
        ram[361] = "0b1100111101";
        ram[362] = "0b1001111101";
        ram[363] = "0b1101111101";
        ram[364] = "0b1010111101";
        ram[365] = "0b1110111101";
        ram[366] = "0b1011111101";
        ram[367] = "0b1111111101";
        ram[368] = "0b1100000010";
        ram[369] = "0b1001000010";
        ram[370] = "0b1101000010";
        ram[371] = "0b1010000010";
        ram[372] = "0b1110000010";
        ram[373] = "0b1011000010";
        ram[374] = "0b1111000010";
        ram[375] = "0b1100010010";
        ram[376] = "0b1001010010";
        ram[377] = "0b1101010010";
        ram[378] = "0b1010010010";
        ram[379] = "0b1110010010";
        ram[380] = "0b1011010010";
        ram[381] = "0b1111010010";
        ram[382] = "0b1100100010";
        ram[383] = "0b1001100010";
        ram[384] = "0b1101100010";
        ram[385] = "0b1010100010";
        ram[386] = "0b1110100010";
        ram[387] = "0b1011100010";
        ram[388] = "0b1111100010";
        ram[389] = "0b1100110010";
        ram[390] = "0b1001110010";
        ram[391] = "0b1101110010";
        ram[392] = "0b1010110010";
        ram[393] = "0b1110110010";
        ram[394] = "0b1011110010";
        ram[395] = "0b1111110010";
        ram[396] = "0b1100000110";
        ram[397] = "0b1101000110";
        ram[398] = "0b1010000110";
        ram[399] = "0b1110000110";
        ram[400] = "0b1011000110";
        ram[401] = "0b1111000110";
        ram[402] = "0b1100010110";
        ram[403] = "0b1101010110";
        ram[404] = "0b1010010110";
        ram[405] = "0b1110010110";
        ram[406] = "0b1011010110";
        ram[407] = "0b1111010110";
        ram[408] = "0b1100100110";
        ram[409] = "0b1101100110";
        ram[410] = "0b1010100110";
        ram[411] = "0b1110100110";
        ram[412] = "0b1011100110";
        ram[413] = "0b1111100110";
        ram[414] = "0b1100110110";
        ram[415] = "0b1101110110";
        ram[416] = "0b1010110110";
        ram[417] = "0b1110110110";
        ram[418] = "0b1011110110";
        ram[419] = "0b1111110110";
        ram[420] = "0b1100001010";
        ram[421] = "0b1101001010";
        ram[422] = "0b1110001010";
        ram[423] = "0b1011001010";
        ram[424] = "0b1111001010";
        ram[425] = "0b1100011010";
        ram[426] = "0b1101011010";
        ram[427] = "0b1110011010";
        ram[428] = "0b1011011010";
        ram[429] = "0b1111011010";
        ram[430] = "0b1100101010";
        ram[431] = "0b1101101010";
        ram[432] = "0b1110101010";
        ram[433] = "0b1011101010";
        ram[434] = "0b1111101010";
        ram[435] = "0b1100111010";
        ram[436] = "0b1101111010";
        ram[437] = "0b1110111010";
        ram[438] = "0b1011111010";
        ram[439] = "0b1111111010";
        ram[440] = "0b1100001110";
        ram[441] = "0b1101001110";
        ram[442] = "0b1110001110";
        ram[443] = "0b1111001110";
        ram[444] = "0b1100011110";
        ram[445] = "0b1101011110";
        ram[446] = "0b1110011110";
        ram[447] = "0b1111011110";
        ram[448] = "0b1100101110";
        ram[449] = "0b1101101110";
        ram[450] = "0b1110101110";
        ram[451] = "0b1111101110";
        ram[452] = "0b1100111110";
        ram[453] = "0b1101111110";
        ram[454] = "0b1110111110";
        ram[455] = "0b1111111110";
        ram[456] = "0b1101000011";
        ram[457] = "0b1110000011";
        ram[458] = "0b1111000011";
        ram[459] = "0b1101010011";
        ram[460] = "0b1110010011";
        ram[461] = "0b1111010011";
        ram[462] = "0b1101100011";
        ram[463] = "0b1110100011";
        ram[464] = "0b1111100011";
        ram[465] = "0b1101110011";
        ram[466] = "0b1110110011";
        ram[467] = "0b1111110011";
        ram[468] = "0b1110000111";
        ram[469] = "0b1111000111";
        ram[470] = "0b1110010111";
        ram[471] = "0b1111010111";
        ram[472] = "0b1110100111";
        ram[473] = "0b1111100111";
        ram[474] = "0b1110110111";
        ram[475] = "0b1111110111";
        ram[476] = "0b1111001011";
        ram[477] = "0b1111011011";
        ram[478] = "0b1111101011";
        ram[479] = "0b1111111011";


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


SC_MODULE(Reorder_fft_lut_rcud) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 480;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Reorder_fft_lut_rcud_ram* meminst;


SC_CTOR(Reorder_fft_lut_rcud) {
meminst = new Reorder_fft_lut_rcud_ram("Reorder_fft_lut_rcud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Reorder_fft_lut_rcud() {
    delete meminst;
}


};//endmodule
#endif