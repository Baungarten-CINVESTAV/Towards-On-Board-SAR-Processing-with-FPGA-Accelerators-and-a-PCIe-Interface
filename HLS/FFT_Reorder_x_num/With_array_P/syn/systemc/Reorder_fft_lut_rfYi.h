// ==============================================================
// File generated on Sun Mar 28 22:02:54 -0600 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Reorder_fft_lut_rfYi_H__
#define __Reorder_fft_lut_rfYi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Reorder_fft_lut_rfYi_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 9;
  static const unsigned AddressRange = 8064;
  static const unsigned AddressWidth = 13;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Reorder_fft_lut_rfYi_ram) {
        ram[0] = "0b000000001";
        ram[1] = "0b000000010";
        ram[2] = "0b000000011";
        ram[3] = "0b000000100";
        ram[4] = "0b000000101";
        ram[5] = "0b000000110";
        ram[6] = "0b000000111";
        ram[7] = "0b000001000";
        ram[8] = "0b000001001";
        ram[9] = "0b000001010";
        ram[10] = "0b000001011";
        ram[11] = "0b000001100";
        ram[12] = "0b000001101";
        ram[13] = "0b000001110";
        ram[14] = "0b000001111";
        ram[15] = "0b000010000";
        ram[16] = "0b000010001";
        ram[17] = "0b000010010";
        ram[18] = "0b000010011";
        ram[19] = "0b000010100";
        ram[20] = "0b000010101";
        ram[21] = "0b000010110";
        ram[22] = "0b000010111";
        ram[23] = "0b000011000";
        ram[24] = "0b000011001";
        ram[25] = "0b000011010";
        ram[26] = "0b000011011";
        ram[27] = "0b000011100";
        ram[28] = "0b000011101";
        ram[29] = "0b000011110";
        ram[30] = "0b000011111";
        ram[31] = "0b000100000";
        ram[32] = "0b000100001";
        ram[33] = "0b000100010";
        ram[34] = "0b000100011";
        ram[35] = "0b000100100";
        ram[36] = "0b000100101";
        ram[37] = "0b000100110";
        ram[38] = "0b000100111";
        ram[39] = "0b000101000";
        ram[40] = "0b000101001";
        ram[41] = "0b000101010";
        ram[42] = "0b000101011";
        ram[43] = "0b000101100";
        ram[44] = "0b000101101";
        ram[45] = "0b000101110";
        ram[46] = "0b000101111";
        ram[47] = "0b000110000";
        ram[48] = "0b000110001";
        ram[49] = "0b000110010";
        ram[50] = "0b000110011";
        ram[51] = "0b000110100";
        ram[52] = "0b000110101";
        ram[53] = "0b000110110";
        ram[54] = "0b000110111";
        ram[55] = "0b000111000";
        ram[56] = "0b000111001";
        ram[57] = "0b000111010";
        ram[58] = "0b000111011";
        ram[59] = "0b000111100";
        ram[60] = "0b000111101";
        ram[61] = "0b000111110";
        ram[62] = "0b000111111";
        ram[63] = "0b001000001";
        ram[64] = "0b001000010";
        ram[65] = "0b001000011";
        ram[66] = "0b001000100";
        ram[67] = "0b001000101";
        ram[68] = "0b001000110";
        ram[69] = "0b001000111";
        ram[70] = "0b001001000";
        ram[71] = "0b001001001";
        ram[72] = "0b001001010";
        ram[73] = "0b001001011";
        ram[74] = "0b001001100";
        ram[75] = "0b001001101";
        ram[76] = "0b001001110";
        ram[77] = "0b001001111";
        ram[78] = "0b001010000";
        ram[79] = "0b001010001";
        ram[80] = "0b001010010";
        ram[81] = "0b001010011";
        ram[82] = "0b001010100";
        ram[83] = "0b001010101";
        ram[84] = "0b001010110";
        ram[85] = "0b001010111";
        ram[86] = "0b001011000";
        ram[87] = "0b001011001";
        ram[88] = "0b001011010";
        ram[89] = "0b001011011";
        ram[90] = "0b001011100";
        ram[91] = "0b001011101";
        ram[92] = "0b001011110";
        ram[93] = "0b001011111";
        ram[94] = "0b001100000";
        ram[95] = "0b001100001";
        ram[96] = "0b001100010";
        ram[97] = "0b001100011";
        ram[98] = "0b001100100";
        ram[99] = "0b001100101";
        ram[100] = "0b001100110";
        ram[101] = "0b001100111";
        ram[102] = "0b001101000";
        ram[103] = "0b001101001";
        ram[104] = "0b001101010";
        ram[105] = "0b001101011";
        ram[106] = "0b001101100";
        ram[107] = "0b001101101";
        ram[108] = "0b001101110";
        ram[109] = "0b001101111";
        ram[110] = "0b001110000";
        ram[111] = "0b001110001";
        ram[112] = "0b001110010";
        ram[113] = "0b001110011";
        ram[114] = "0b001110100";
        ram[115] = "0b001110101";
        ram[116] = "0b001110110";
        ram[117] = "0b001110111";
        ram[118] = "0b001111000";
        ram[119] = "0b001111001";
        ram[120] = "0b001111010";
        ram[121] = "0b001111011";
        ram[122] = "0b001111100";
        ram[123] = "0b001111101";
        ram[124] = "0b001111110";
        ram[125] = "0b001111111";
        ram[126] = "0b010000001";
        ram[127] = "0b010000010";
        ram[128] = "0b010000011";
        ram[129] = "0b010000100";
        ram[130] = "0b010000101";
        ram[131] = "0b010000110";
        ram[132] = "0b010000111";
        ram[133] = "0b010001000";
        ram[134] = "0b010001001";
        ram[135] = "0b010001010";
        ram[136] = "0b010001011";
        ram[137] = "0b010001100";
        ram[138] = "0b010001101";
        ram[139] = "0b010001110";
        ram[140] = "0b010001111";
        ram[141] = "0b010010000";
        ram[142] = "0b010010001";
        ram[143] = "0b010010010";
        ram[144] = "0b010010011";
        ram[145] = "0b010010100";
        ram[146] = "0b010010101";
        ram[147] = "0b010010110";
        ram[148] = "0b010010111";
        ram[149] = "0b010011000";
        ram[150] = "0b010011001";
        ram[151] = "0b010011010";
        ram[152] = "0b010011011";
        ram[153] = "0b010011100";
        ram[154] = "0b010011101";
        ram[155] = "0b010011110";
        ram[156] = "0b010011111";
        ram[157] = "0b010100000";
        ram[158] = "0b010100001";
        ram[159] = "0b010100010";
        ram[160] = "0b010100011";
        ram[161] = "0b010100100";
        ram[162] = "0b010100101";
        ram[163] = "0b010100110";
        ram[164] = "0b010100111";
        ram[165] = "0b010101000";
        ram[166] = "0b010101001";
        ram[167] = "0b010101010";
        ram[168] = "0b010101011";
        ram[169] = "0b010101100";
        ram[170] = "0b010101101";
        ram[171] = "0b010101110";
        ram[172] = "0b010101111";
        ram[173] = "0b010110000";
        ram[174] = "0b010110001";
        ram[175] = "0b010110010";
        ram[176] = "0b010110011";
        ram[177] = "0b010110100";
        ram[178] = "0b010110101";
        ram[179] = "0b010110110";
        ram[180] = "0b010110111";
        ram[181] = "0b010111000";
        ram[182] = "0b010111001";
        ram[183] = "0b010111010";
        ram[184] = "0b010111011";
        ram[185] = "0b010111100";
        ram[186] = "0b010111101";
        ram[187] = "0b010111110";
        ram[188] = "0b010111111";
        ram[189] = "0b011000001";
        ram[190] = "0b011000010";
        ram[191] = "0b011000011";
        ram[192] = "0b011000100";
        ram[193] = "0b011000101";
        ram[194] = "0b011000110";
        ram[195] = "0b011000111";
        ram[196] = "0b011001000";
        ram[197] = "0b011001001";
        ram[198] = "0b011001010";
        ram[199] = "0b011001011";
        ram[200] = "0b011001100";
        ram[201] = "0b011001101";
        ram[202] = "0b011001110";
        ram[203] = "0b011001111";
        ram[204] = "0b011010000";
        ram[205] = "0b011010001";
        ram[206] = "0b011010010";
        ram[207] = "0b011010011";
        ram[208] = "0b011010100";
        ram[209] = "0b011010101";
        ram[210] = "0b011010110";
        ram[211] = "0b011010111";
        ram[212] = "0b011011000";
        ram[213] = "0b011011001";
        ram[214] = "0b011011010";
        ram[215] = "0b011011011";
        ram[216] = "0b011011100";
        ram[217] = "0b011011101";
        ram[218] = "0b011011110";
        ram[219] = "0b011011111";
        ram[220] = "0b011100000";
        ram[221] = "0b011100001";
        ram[222] = "0b011100010";
        ram[223] = "0b011100011";
        ram[224] = "0b011100100";
        ram[225] = "0b011100101";
        ram[226] = "0b011100110";
        ram[227] = "0b011100111";
        ram[228] = "0b011101000";
        ram[229] = "0b011101001";
        ram[230] = "0b011101010";
        ram[231] = "0b011101011";
        ram[232] = "0b011101100";
        ram[233] = "0b011101101";
        ram[234] = "0b011101110";
        ram[235] = "0b011101111";
        ram[236] = "0b011110000";
        ram[237] = "0b011110001";
        ram[238] = "0b011110010";
        ram[239] = "0b011110011";
        ram[240] = "0b011110100";
        ram[241] = "0b011110101";
        ram[242] = "0b011110110";
        ram[243] = "0b011110111";
        ram[244] = "0b011111000";
        ram[245] = "0b011111001";
        ram[246] = "0b011111010";
        ram[247] = "0b011111011";
        ram[248] = "0b011111100";
        ram[249] = "0b011111101";
        ram[250] = "0b011111110";
        ram[251] = "0b011111111";
        ram[252] = "0b100000001";
        ram[253] = "0b100000010";
        ram[254] = "0b100000011";
        ram[255] = "0b100000100";
        ram[256] = "0b100000101";
        ram[257] = "0b100000110";
        ram[258] = "0b100000111";
        ram[259] = "0b100001000";
        ram[260] = "0b100001001";
        ram[261] = "0b100001010";
        ram[262] = "0b100001011";
        ram[263] = "0b100001100";
        ram[264] = "0b100001101";
        ram[265] = "0b100001110";
        ram[266] = "0b100001111";
        ram[267] = "0b100010001";
        ram[268] = "0b100010010";
        ram[269] = "0b100010011";
        ram[270] = "0b100010100";
        ram[271] = "0b100010101";
        ram[272] = "0b100010110";
        ram[273] = "0b100010111";
        ram[274] = "0b100011000";
        ram[275] = "0b100011001";
        ram[276] = "0b100011010";
        ram[277] = "0b100011011";
        ram[278] = "0b100011100";
        ram[279] = "0b100011101";
        ram[280] = "0b100011110";
        ram[281] = "0b100011111";
        ram[282] = "0b100100000";
        ram[283] = "0b100100001";
        ram[284] = "0b100100010";
        ram[285] = "0b100100011";
        ram[286] = "0b100100100";
        ram[287] = "0b100100101";
        ram[288] = "0b100100110";
        ram[289] = "0b100100111";
        ram[290] = "0b100101000";
        ram[291] = "0b100101001";
        ram[292] = "0b100101010";
        ram[293] = "0b100101011";
        ram[294] = "0b100101100";
        ram[295] = "0b100101101";
        ram[296] = "0b100101110";
        ram[297] = "0b100101111";
        ram[298] = "0b100110000";
        ram[299] = "0b100110001";
        ram[300] = "0b100110010";
        ram[301] = "0b100110011";
        ram[302] = "0b100110100";
        ram[303] = "0b100110101";
        ram[304] = "0b100110110";
        ram[305] = "0b100110111";
        ram[306] = "0b100111000";
        ram[307] = "0b100111001";
        ram[308] = "0b100111010";
        ram[309] = "0b100111011";
        ram[310] = "0b100111100";
        ram[311] = "0b100111101";
        ram[312] = "0b100111110";
        ram[313] = "0b100111111";
        ram[314] = "0b101000001";
        ram[315] = "0b101000010";
        ram[316] = "0b101000011";
        ram[317] = "0b101000100";
        ram[318] = "0b101000101";
        ram[319] = "0b101000110";
        ram[320] = "0b101000111";
        ram[321] = "0b101001000";
        ram[322] = "0b101001001";
        ram[323] = "0b101001010";
        ram[324] = "0b101001011";
        ram[325] = "0b101001100";
        ram[326] = "0b101001101";
        ram[327] = "0b101001110";
        ram[328] = "0b101001111";
        ram[329] = "0b101010001";
        ram[330] = "0b101010010";
        ram[331] = "0b101010011";
        ram[332] = "0b101010100";
        ram[333] = "0b101010101";
        ram[334] = "0b101010110";
        ram[335] = "0b101010111";
        ram[336] = "0b101011000";
        ram[337] = "0b101011001";
        ram[338] = "0b101011010";
        ram[339] = "0b101011011";
        ram[340] = "0b101011100";
        ram[341] = "0b101011101";
        ram[342] = "0b101011110";
        ram[343] = "0b101011111";
        ram[344] = "0b101100000";
        ram[345] = "0b101100001";
        ram[346] = "0b101100010";
        ram[347] = "0b101100011";
        ram[348] = "0b101100100";
        ram[349] = "0b101100101";
        ram[350] = "0b101100110";
        ram[351] = "0b101100111";
        ram[352] = "0b101101000";
        ram[353] = "0b101101001";
        ram[354] = "0b101101010";
        ram[355] = "0b101101011";
        ram[356] = "0b101101100";
        ram[357] = "0b101101101";
        ram[358] = "0b101101110";
        ram[359] = "0b101101111";
        ram[360] = "0b101110000";
        ram[361] = "0b101110001";
        ram[362] = "0b101110010";
        ram[363] = "0b101110011";
        ram[364] = "0b101110100";
        ram[365] = "0b101110101";
        ram[366] = "0b101110110";
        ram[367] = "0b101110111";
        ram[368] = "0b101111000";
        ram[369] = "0b101111001";
        ram[370] = "0b101111010";
        ram[371] = "0b101111011";
        ram[372] = "0b101111100";
        ram[373] = "0b101111101";
        ram[374] = "0b101111110";
        ram[375] = "0b101111111";
        ram[376] = "0b110000001";
        ram[377] = "0b110000010";
        ram[378] = "0b110000011";
        ram[379] = "0b110000100";
        ram[380] = "0b110000101";
        ram[381] = "0b110000110";
        ram[382] = "0b110000111";
        ram[383] = "0b110001000";
        ram[384] = "0b110001001";
        ram[385] = "0b110001010";
        ram[386] = "0b110001011";
        ram[387] = "0b110001100";
        ram[388] = "0b110001101";
        ram[389] = "0b110001110";
        ram[390] = "0b110001111";
        ram[391] = "0b110010001";
        ram[392] = "0b110010010";
        ram[393] = "0b110010011";
        ram[394] = "0b110010100";
        ram[395] = "0b110010101";
        ram[396] = "0b110010110";
        ram[397] = "0b110010111";
        ram[398] = "0b110011000";
        ram[399] = "0b110011001";
        ram[400] = "0b110011010";
        ram[401] = "0b110011011";
        ram[402] = "0b110011100";
        ram[403] = "0b110011101";
        ram[404] = "0b110011110";
        ram[405] = "0b110011111";
        ram[406] = "0b110100000";
        ram[407] = "0b110100001";
        ram[408] = "0b110100010";
        ram[409] = "0b110100011";
        ram[410] = "0b110100100";
        ram[411] = "0b110100101";
        ram[412] = "0b110100110";
        ram[413] = "0b110100111";
        ram[414] = "0b110101000";
        ram[415] = "0b110101001";
        ram[416] = "0b110101010";
        ram[417] = "0b110101011";
        ram[418] = "0b110101100";
        ram[419] = "0b110101101";
        ram[420] = "0b110101110";
        ram[421] = "0b110101111";
        ram[422] = "0b110110000";
        ram[423] = "0b110110001";
        ram[424] = "0b110110010";
        ram[425] = "0b110110011";
        ram[426] = "0b110110100";
        ram[427] = "0b110110101";
        ram[428] = "0b110110110";
        ram[429] = "0b110110111";
        ram[430] = "0b110111000";
        ram[431] = "0b110111001";
        ram[432] = "0b110111010";
        ram[433] = "0b110111011";
        ram[434] = "0b110111100";
        ram[435] = "0b110111101";
        ram[436] = "0b110111110";
        ram[437] = "0b110111111";
        ram[438] = "0b111000001";
        ram[439] = "0b111000010";
        ram[440] = "0b111000011";
        ram[441] = "0b111000100";
        ram[442] = "0b111000101";
        ram[443] = "0b111000110";
        ram[444] = "0b111000111";
        ram[445] = "0b111001000";
        ram[446] = "0b111001001";
        ram[447] = "0b111001010";
        ram[448] = "0b111001011";
        ram[449] = "0b111001100";
        ram[450] = "0b111001101";
        ram[451] = "0b111001110";
        ram[452] = "0b111001111";
        ram[453] = "0b111010001";
        ram[454] = "0b111010010";
        ram[455] = "0b111010011";
        ram[456] = "0b111010100";
        ram[457] = "0b111010101";
        ram[458] = "0b111010110";
        ram[459] = "0b111010111";
        ram[460] = "0b111011000";
        ram[461] = "0b111011001";
        ram[462] = "0b111011010";
        ram[463] = "0b111011011";
        ram[464] = "0b111011100";
        ram[465] = "0b111011101";
        ram[466] = "0b111011110";
        ram[467] = "0b111011111";
        ram[468] = "0b111100000";
        ram[469] = "0b111100001";
        ram[470] = "0b111100010";
        ram[471] = "0b111100011";
        ram[472] = "0b111100100";
        ram[473] = "0b111100101";
        ram[474] = "0b111100110";
        ram[475] = "0b111100111";
        ram[476] = "0b111101000";
        ram[477] = "0b111101001";
        ram[478] = "0b111101010";
        ram[479] = "0b111101011";
        for (unsigned i = 480; i < 8064 ; i = i + 1) {
            ram[i] = "0b000000000";
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


SC_MODULE(Reorder_fft_lut_rfYi) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 8064;
static const unsigned AddressWidth = 13;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Reorder_fft_lut_rfYi_ram* meminst;


SC_CTOR(Reorder_fft_lut_rfYi) {
meminst = new Reorder_fft_lut_rfYi_ram("Reorder_fft_lut_rfYi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Reorder_fft_lut_rfYi() {
    delete meminst;
}


};//endmodule
#endif
