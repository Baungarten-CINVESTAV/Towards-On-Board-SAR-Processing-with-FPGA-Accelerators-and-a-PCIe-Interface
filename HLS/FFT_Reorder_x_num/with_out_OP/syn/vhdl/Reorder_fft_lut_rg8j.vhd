-- ==============================================================
-- File generated on Sun Mar 28 22:20:02 -0600 2021
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Reorder_fft_lut_rg8j_rom is 
    generic(
             DWIDTH     : integer := 14; 
             AWIDTH     : integer := 13; 
             MEM_SIZE    : integer := 8064
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Reorder_fft_lut_rg8j_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01000000000000", 1 => "10000000000000", 2 => "11000000000000", 
    3 => "00010000000000", 4 => "01010000000000", 5 => "10010000000000", 
    6 => "11010000000000", 7 => "00100000000000", 8 => "01100000000000", 
    9 => "10100000000000", 10 => "11100000000000", 11 => "00110000000000", 
    12 => "01110000000000", 13 => "10110000000000", 14 => "11110000000000", 
    15 => "00000100000000", 16 => "01000100000000", 17 => "10000100000000", 
    18 => "11000100000000", 19 => "00010100000000", 20 => "01010100000000", 
    21 => "10010100000000", 22 => "11010100000000", 23 => "00100100000000", 
    24 => "01100100000000", 25 => "10100100000000", 26 => "11100100000000", 
    27 => "00110100000000", 28 => "01110100000000", 29 => "10110100000000", 
    30 => "11110100000000", 31 => "00001000000000", 32 => "01001000000000", 
    33 => "10001000000000", 34 => "11001000000000", 35 => "00011000000000", 
    36 => "01011000000000", 37 => "10011000000000", 38 => "11011000000000", 
    39 => "00101000000000", 40 => "01101000000000", 41 => "10101000000000", 
    42 => "11101000000000", 43 => "00111000000000", 44 => "01111000000000", 
    45 => "10111000000000", 46 => "11111000000000", 47 => "00001100000000", 
    48 => "01001100000000", 49 => "10001100000000", 50 => "11001100000000", 
    51 => "00011100000000", 52 => "01011100000000", 53 => "10011100000000", 
    54 => "11011100000000", 55 => "00101100000000", 56 => "01101100000000", 
    57 => "10101100000000", 58 => "11101100000000", 59 => "00111100000000", 
    60 => "01111100000000", 61 => "10111100000000", 62 => "11111100000000", 
    63 => "01000001000000", 64 => "10000001000000", 65 => "11000001000000", 
    66 => "00010001000000", 67 => "01010001000000", 68 => "10010001000000", 
    69 => "11010001000000", 70 => "00100001000000", 71 => "01100001000000", 
    72 => "10100001000000", 73 => "11100001000000", 74 => "00110001000000", 
    75 => "01110001000000", 76 => "10110001000000", 77 => "11110001000000", 
    78 => "00000101000000", 79 => "01000101000000", 80 => "10000101000000", 
    81 => "11000101000000", 82 => "00010101000000", 83 => "01010101000000", 
    84 => "10010101000000", 85 => "11010101000000", 86 => "00100101000000", 
    87 => "01100101000000", 88 => "10100101000000", 89 => "11100101000000", 
    90 => "00110101000000", 91 => "01110101000000", 92 => "10110101000000", 
    93 => "11110101000000", 94 => "00001001000000", 95 => "01001001000000", 
    96 => "10001001000000", 97 => "11001001000000", 98 => "00011001000000", 
    99 => "01011001000000", 100 => "10011001000000", 101 => "11011001000000", 
    102 => "00101001000000", 103 => "01101001000000", 104 => "10101001000000", 
    105 => "11101001000000", 106 => "00111001000000", 107 => "01111001000000", 
    108 => "10111001000000", 109 => "11111001000000", 110 => "00001101000000", 
    111 => "01001101000000", 112 => "10001101000000", 113 => "11001101000000", 
    114 => "00011101000000", 115 => "01011101000000", 116 => "10011101000000", 
    117 => "11011101000000", 118 => "00101101000000", 119 => "01101101000000", 
    120 => "10101101000000", 121 => "11101101000000", 122 => "00111101000000", 
    123 => "01111101000000", 124 => "10111101000000", 125 => "11111101000000", 
    126 => "01000010000000", 127 => "10000010000000", 128 => "11000010000000", 
    129 => "00010010000000", 130 => "01010010000000", 131 => "10010010000000", 
    132 => "11010010000000", 133 => "00100010000000", 134 => "01100010000000", 
    135 => "10100010000000", 136 => "11100010000000", 137 => "00110010000000", 
    138 => "01110010000000", 139 => "10110010000000", 140 => "11110010000000", 
    141 => "00000110000000", 142 => "01000110000000", 143 => "10000110000000", 
    144 => "11000110000000", 145 => "00010110000000", 146 => "01010110000000", 
    147 => "10010110000000", 148 => "11010110000000", 149 => "00100110000000", 
    150 => "01100110000000", 151 => "10100110000000", 152 => "11100110000000", 
    153 => "00110110000000", 154 => "01110110000000", 155 => "10110110000000", 
    156 => "11110110000000", 157 => "00001010000000", 158 => "01001010000000", 
    159 => "10001010000000", 160 => "11001010000000", 161 => "00011010000000", 
    162 => "01011010000000", 163 => "10011010000000", 164 => "11011010000000", 
    165 => "00101010000000", 166 => "01101010000000", 167 => "10101010000000", 
    168 => "11101010000000", 169 => "00111010000000", 170 => "01111010000000", 
    171 => "10111010000000", 172 => "11111010000000", 173 => "00001110000000", 
    174 => "01001110000000", 175 => "10001110000000", 176 => "11001110000000", 
    177 => "00011110000000", 178 => "01011110000000", 179 => "10011110000000", 
    180 => "11011110000000", 181 => "00101110000000", 182 => "01101110000000", 
    183 => "10101110000000", 184 => "11101110000000", 185 => "00111110000000", 
    186 => "01111110000000", 187 => "10111110000000", 188 => "11111110000000", 
    189 => "01000011000000", 190 => "10000011000000", 191 => "11000011000000", 
    192 => "00010011000000", 193 => "01010011000000", 194 => "10010011000000", 
    195 => "11010011000000", 196 => "00100011000000", 197 => "01100011000000", 
    198 => "10100011000000", 199 => "11100011000000", 200 => "00110011000000", 
    201 => "01110011000000", 202 => "10110011000000", 203 => "11110011000000", 
    204 => "00000111000000", 205 => "01000111000000", 206 => "10000111000000", 
    207 => "11000111000000", 208 => "00010111000000", 209 => "01010111000000", 
    210 => "10010111000000", 211 => "11010111000000", 212 => "00100111000000", 
    213 => "01100111000000", 214 => "10100111000000", 215 => "11100111000000", 
    216 => "00110111000000", 217 => "01110111000000", 218 => "10110111000000", 
    219 => "11110111000000", 220 => "00001011000000", 221 => "01001011000000", 
    222 => "10001011000000", 223 => "11001011000000", 224 => "00011011000000", 
    225 => "01011011000000", 226 => "10011011000000", 227 => "11011011000000", 
    228 => "00101011000000", 229 => "01101011000000", 230 => "10101011000000", 
    231 => "11101011000000", 232 => "00111011000000", 233 => "01111011000000", 
    234 => "10111011000000", 235 => "11111011000000", 236 => "00001111000000", 
    237 => "01001111000000", 238 => "10001111000000", 239 => "11001111000000", 
    240 => "00011111000000", 241 => "01011111000000", 242 => "10011111000000", 
    243 => "11011111000000", 244 => "00101111000000", 245 => "01101111000000", 
    246 => "10101111000000", 247 => "11101111000000", 248 => "00111111000000", 
    249 => "01111111000000", 250 => "10111111000000", 251 => "11111111000000", 
    252 => "01000000010000", 253 => "10000000010000", 254 => "11000000010000", 
    255 => "00010000010000", 256 => "01010000010000", 257 => "10010000010000", 
    258 => "11010000010000", 259 => "00100000010000", 260 => "01100000010000", 
    261 => "10100000010000", 262 => "11100000010000", 263 => "00110000010000", 
    264 => "01110000010000", 265 => "10110000010000", 266 => "11110000010000", 
    267 => "01000100010000", 268 => "10000100010000", 269 => "11000100010000", 
    270 => "00010100010000", 271 => "01010100010000", 272 => "10010100010000", 
    273 => "11010100010000", 274 => "00100100010000", 275 => "01100100010000", 
    276 => "10100100010000", 277 => "11100100010000", 278 => "00110100010000", 
    279 => "01110100010000", 280 => "10110100010000", 281 => "11110100010000", 
    282 => "00001000010000", 283 => "01001000010000", 284 => "10001000010000", 
    285 => "11001000010000", 286 => "00011000010000", 287 => "01011000010000", 
    288 => "10011000010000", 289 => "11011000010000", 290 => "00101000010000", 
    291 => "01101000010000", 292 => "10101000010000", 293 => "11101000010000", 
    294 => "00111000010000", 295 => "01111000010000", 296 => "10111000010000", 
    297 => "11111000010000", 298 => "00001100010000", 299 => "01001100010000", 
    300 => "10001100010000", 301 => "11001100010000", 302 => "00011100010000", 
    303 => "01011100010000", 304 => "10011100010000", 305 => "11011100010000", 
    306 => "00101100010000", 307 => "01101100010000", 308 => "10101100010000", 
    309 => "11101100010000", 310 => "00111100010000", 311 => "01111100010000", 
    312 => "10111100010000", 313 => "11111100010000", 314 => "01000001010000", 
    315 => "10000001010000", 316 => "11000001010000", 317 => "00010001010000", 
    318 => "01010001010000", 319 => "10010001010000", 320 => "11010001010000", 
    321 => "00100001010000", 322 => "01100001010000", 323 => "10100001010000", 
    324 => "11100001010000", 325 => "00110001010000", 326 => "01110001010000", 
    327 => "10110001010000", 328 => "11110001010000", 329 => "01000101010000", 
    330 => "10000101010000", 331 => "11000101010000", 332 => "00010101010000", 
    333 => "01010101010000", 334 => "10010101010000", 335 => "11010101010000", 
    336 => "00100101010000", 337 => "01100101010000", 338 => "10100101010000", 
    339 => "11100101010000", 340 => "00110101010000", 341 => "01110101010000", 
    342 => "10110101010000", 343 => "11110101010000", 344 => "00001001010000", 
    345 => "01001001010000", 346 => "10001001010000", 347 => "11001001010000", 
    348 => "00011001010000", 349 => "01011001010000", 350 => "10011001010000", 
    351 => "11011001010000", 352 => "00101001010000", 353 => "01101001010000", 
    354 => "10101001010000", 355 => "11101001010000", 356 => "00111001010000", 
    357 => "01111001010000", 358 => "10111001010000", 359 => "11111001010000", 
    360 => "00001101010000", 361 => "01001101010000", 362 => "10001101010000", 
    363 => "11001101010000", 364 => "00011101010000", 365 => "01011101010000", 
    366 => "10011101010000", 367 => "11011101010000", 368 => "00101101010000", 
    369 => "01101101010000", 370 => "10101101010000", 371 => "11101101010000", 
    372 => "00111101010000", 373 => "01111101010000", 374 => "10111101010000", 
    375 => "11111101010000", 376 => "01000010010000", 377 => "10000010010000", 
    378 => "11000010010000", 379 => "00010010010000", 380 => "01010010010000", 
    381 => "10010010010000", 382 => "11010010010000", 383 => "00100010010000", 
    384 => "01100010010000", 385 => "10100010010000", 386 => "11100010010000", 
    387 => "00110010010000", 388 => "01110010010000", 389 => "10110010010000", 
    390 => "11110010010000", 391 => "01000110010000", 392 => "10000110010000", 
    393 => "11000110010000", 394 => "00010110010000", 395 => "01010110010000", 
    396 => "10010110010000", 397 => "11010110010000", 398 => "00100110010000", 
    399 => "01100110010000", 400 => "10100110010000", 401 => "11100110010000", 
    402 => "00110110010000", 403 => "01110110010000", 404 => "10110110010000", 
    405 => "11110110010000", 406 => "00001010010000", 407 => "01001010010000", 
    408 => "10001010010000", 409 => "11001010010000", 410 => "00011010010000", 
    411 => "01011010010000", 412 => "10011010010000", 413 => "11011010010000", 
    414 => "00101010010000", 415 => "01101010010000", 416 => "10101010010000", 
    417 => "11101010010000", 418 => "00111010010000", 419 => "01111010010000", 
    420 => "10111010010000", 421 => "11111010010000", 422 => "00001110010000", 
    423 => "01001110010000", 424 => "10001110010000", 425 => "11001110010000", 
    426 => "00011110010000", 427 => "01011110010000", 428 => "10011110010000", 
    429 => "11011110010000", 430 => "00101110010000", 431 => "01101110010000", 
    432 => "10101110010000", 433 => "11101110010000", 434 => "00111110010000", 
    435 => "01111110010000", 436 => "10111110010000", 437 => "11111110010000", 
    438 => "01000011010000", 439 => "10000011010000", 440 => "11000011010000", 
    441 => "00010011010000", 442 => "01010011010000", 443 => "10010011010000", 
    444 => "11010011010000", 445 => "00100011010000", 446 => "01100011010000", 
    447 => "10100011010000", 448 => "11100011010000", 449 => "00110011010000", 
    450 => "01110011010000", 451 => "10110011010000", 452 => "11110011010000", 
    453 => "01000111010000", 454 => "10000111010000", 455 => "11000111010000", 
    456 => "00010111010000", 457 => "01010111010000", 458 => "10010111010000", 
    459 => "11010111010000", 460 => "00100111010000", 461 => "01100111010000", 
    462 => "10100111010000", 463 => "11100111010000", 464 => "00110111010000", 
    465 => "01110111010000", 466 => "10110111010000", 467 => "11110111010000", 
    468 => "00001011010000", 469 => "01001011010000", 470 => "10001011010000", 
    471 => "11001011010000", 472 => "00011011010000", 473 => "01011011010000", 
    474 => "10011011010000", 475 => "11011011010000", 476 => "00101011010000", 
    477 => "01101011010000", 478 => "10101011010000", 479 => "11101011010000", 
    480 to 8063=> "00000000000000" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity Reorder_fft_lut_rg8j is
    generic (
        DataWidth : INTEGER := 14;
        AddressRange : INTEGER := 8064;
        AddressWidth : INTEGER := 13);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Reorder_fft_lut_rg8j is
    component Reorder_fft_lut_rg8j_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Reorder_fft_lut_rg8j_rom_U :  component Reorder_fft_lut_rg8j_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


