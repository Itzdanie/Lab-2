/*
 Data Encryption Standard (S-DES)
 64-bit 16-round block cipher encryption and decryption algorithm 
 using 56-bit key (64-bit key with Parity).
 */

module GenerateKeys (Key, SubKey1, SubKey2, SubKey3, SubKey4,
		     SubKey5, SubKey6, SubKey7, SubKey8,
		     SubKey9, SubKey10, SubKey11, SubKey12,
		     SubKey13, SubKey14, SubKey15, SubKey16);
   
   // Generate SubKeys
   input logic [63:0]  Key;
   output logic [47:0] SubKey1;
   output logic [47:0] SubKey2;
   output logic [47:0] SubKey3;
   output logic [47:0] SubKey4;
   output logic [47:0] SubKey5;
   output logic [47:0] SubKey6;
   output logic [47:0] SubKey7;
   output logic [47:0] SubKey8;
   output logic [47:0] SubKey9;
   output logic [47:0] SubKey10;
   output logic [47:0] SubKey11;
   output logic [47:0] SubKey12;
   output logic [47:0] SubKey13;
   output logic [47:0] SubKey14;
   output logic [47:0] SubKey15;
   output logic [47:0] SubKey16;
   logic [27:0] l1;
   logic [27:0] r1;
   logic [27:0] l2;
   logic [27:0] r2;
   logic [27:0] l3;
   logic [27:0] r3;
   logic [27:0] l4;
   logic [27:0] r4;
   logic [27:0] l5;
   logic [27:0] r5;
   logic [27:0] l6;
   logic [27:0] r6;
   logic [27:0] l7;
   logic [27:0] r7;
   logic [27:0] l8;
   logic [27:0] r8;
   logic [27:0] l9;
   logic [27:0] r9;
   logic [27:0] l10;
   logic [27:0] r10;
   logic [27:0] l11;
   logic [27:0] r11;
   logic [27:0] l12;
   logic [27:0] r12;
   logic [27:0] l13;
   logic [27:0] r13;
   logic [27:0] l14;
   logic [27:0] r14;
   logic [27:0] l15;
   logic [27:0] r15;
   logic [27:0] l16;
   logic [27:0] r16;
   logic [27:0] l17;
   logic [27:0] r17;
   
   PC1 I(key,l1,r1);

   assign l2 = {l1[26:0],l1[27]};
   assign r2 = {r1[26:0],r1[27]};
   PC2 II(l2,r2,SubKey1);

   assign l3 = {l2[26:0],l2[27]};
   assign r3 = {r2[26:0],r2[27]};
   PC2 III(l3,r3,SubKey2);

   assign l4 = {l3[25:0],l3[27:26]};
   assign r4 = {r3[25:0],r3[27:26]};
   PC2 IV(l4,r4,SubKey3);

   assign l5 = {l4[25:0],l4[27:26]};
   assign r5 = {r4[25:0],r4[27:26]};
   PC2 V(l5,r5,SubKey4);

   assign l6 = {l5[25:0],l5[27:26]};
   assign r6 = {r5[25:0],r5[27:26]};
   PC2 VI(l6,r6,SubKey5);

   assign l7 = {l6[25:0],l6[27:26]};
   assign r7 = {r6[25:0],r6[27:26]};
   PC2 VII(l7,r7,SubKey6);
   
   assign l8 = {l7[25:0],l7[27:26]};
   assign r8 = {r7[25:0],r7[27:26]};
   PC2 VIII(l8,r8,SubKey7);

   assign l9 = {l8[25:0],l8[27:26]};
   assign r9 = {r8[25:0],r8[27:26]};
   PC2 IX(l9,r9,SubKey8);

   assign l10 = {l9[26:0],l9[27]};
   assign r10 = {r9[26:0],r9[27]};
   PC2 X(l10,r10,SubKey9);

   assign l11 = {l10[25:0],l10[27:26]};
   assign r11 = {r10[25:0],r10[27:26]};
   PC2 XI(l11,r11,SubKey10);

   assign l12 = {l11[25:0],l11[27:26]};
   assign r12 = {r11[25:0],r11[27:26]};
   PC2 XII(l12,r12,SubKey11);

   assign l13 = {l12[25:0],l12[27:26]};
   assign r13 = {r12[25:0],r12[27:26]};
   PC2 XIII(l13,r13,SubKey12);

   assign l14 = {l13[25:0],l13[27:26]};
   assign r14 = {r13[25:0],r13[27:26]};
   PC2 XIV(l14,r14,SubKey13);

   assign l15 = {l14[25:0],l14[27:26]};
   assign r15 = {r14[25:0],r14[27:26]};
   PC2 XV(l15,r15,SubKey14);

   assign l16 = {l15[25:0],l15[27:26]};
   assign r16 = {r15[25:0],r15[27:26]};
   PC2 XVI(l16,r16,SubKey15);

   assign l17 = {l16[26:0],l16[27]};
   assign r17 = {r16[26:0],r16[27]};
   PC2 XVII(l17,r17,SubKey16);

endmodule // GenerateKeys

module PC1 (key,l1,r1);

   input logic [63:0]  key;
   output logic [27:0] l1;
   output logic [27:0] r1;

   logic [55:0]        out_block;

   //Left
   assign l1[27] = key[64-57];
   assign l1[26] = key[64-49];
   assign l1[25] = key[64-41];
   assign l1[24] = key[64-33];
   assign l1[23] = key[64-25];
   assign l1[22] = key[64-17];
   assign l1[21] = key[64-9];
   assign l1[20] = key[64-1];
   assign l1[19] = key[64-58];
   assign l1[18] = key[64-50];
   assign l1[17] = key[64-42];
   assign l1[16] = key[64-34];
   assign l1[15] = key[64-26];
   assign l1[14] = key[64-18];
   assign l1[13] = key[64-10];
   assign l1[12] = key[64-2];
   assign l1[11] = key[64-59];
   assign l1[10] = key[64-51];
   assign l1[9] = key[64-43];
   assign l1[8] = key[64-35];
   assign l1[7] = key[64-27];
   assign l1[6] = key[64-19];
   assign l1[5] = key[64-11];
   assign l1[4] = key[64-3];
   assign l1[3] = key[64-60];
   assign l1[2] = key[64-52];
   assign l1[1] = key[64-44];
   assign l1[0] = key[64-36];
   //Right
   assign r1[27] = key[64-63];
   assign r1[26] = key[64-55];
   assign r1[25] = key[64-47];
   assign r1[24] = key[64-39];
   assign r1[23] = key[64-31];
   assign r1[22] = key[64-23];
   assign r1[21] = key[64-15];
   assign r1[20] = key[64-7];
   assign r1[19] = key[64-62];
   assign r1[18] = key[64-54];
   assign r1[17] = key[64-46];
   assign r1[16] = key[64-38];
   assign r1[15] = key[64-30];
   assign r1[14] = key[64-22];
   assign r1[13] = key[64-14];
   assign r1[12] = key[64-6];
   assign r1[11] = key[64-61];
   assign r1[10] = key[64-53];
   assign r1[9] = key[64-45];
   assign r1[8] = key[64-37];
   assign r1[7] = key[64-29];
   assign r1[6] = key[64-21];
   assign r1[5] = key[64-13];
   assign r1[4] = key[64-5];
   assign r1[3] = key[64-28];
   assign r1[2] = key[64-20];
   assign r1[1] = key[64-12];
   assign r1[0] = key[64-4];


endmodule // PC1

module PC2 (left_block, right_block, SubKey);

   input logic [27:0] left_block;
   input logic [27:0] right_block;
   output logic [47:0] SubKey;
   logic [55:0] both;
   assign both[55:0] = {left_block[27:0],right_block[27:0]};

   assign SubKey[47] = both[56-14];
   assign SubKey[46] = both[56-17];
   assign SubKey[45] = both[56-11];
   assign SubKey[44] = both[56-24];
   assign SubKey[43] = both[56-1];
   assign SubKey[42] = both[56-5];
   assign SubKey[41] = both[56-3];
   assign SubKey[40] = both[56-28];
   assign SubKey[39] = both[56-15];
   assign SubKey[38] = both[56-6];
   assign SubKey[37] = both[56-21];
   assign SubKey[36] = both[56-10];
   assign SubKey[35] = both[56-23];
   assign SubKey[34] = both[56-19];
   assign SubKey[33] = both[56-12];
   assign SubKey[32] = both[56-4];
   assign SubKey[31] = both[56-26];
   assign SubKey[30] = both[56-8];
   assign SubKey[29] = both[56-16];
   assign SubKey[28] = both[56-7];
   assign SubKey[27] = both[56-27];
   assign SubKey[26] = both[56-20];
   assign SubKey[25] = both[56-13];
   assign SubKey[24] = both[56-2];
   assign SubKey[23] = both[56-41];
   assign SubKey[22] = both[56-52];
   assign SubKey[21] = both[56-31];
   assign SubKey[20] = both[56-37];
   assign SubKey[19] = both[56-47];
   assign SubKey[18] = both[56-55];
   assign SubKey[17] = both[56-30];
   assign SubKey[16] = both[56-40];
   assign SubKey[15] = both[56-51];
   assign SubKey[14] = both[56-45];
   assign SubKey[13] = both[56-33];
   assign SubKey[12] = both[56-48];
   assign SubKey[11] = both[56-44];
   assign SubKey[10] = both[56-49];
   assign SubKey[9] = both[56-39];
   assign SubKey[8] = both[56-56];
   assign SubKey[7] = both[56-34];
   assign SubKey[6] = both[56-53];
   assign SubKey[5] = both[56-46];
   assign SubKey[4] = both[56-42];
   assign SubKey[3] = both[56-50];
   assign SubKey[2] = both[56-36];
   assign SubKey[1] = both[56-29];
   assign SubKey[0] = both[56-32];



endmodule // PC2

// Straight Function
module SF (inp_block, out_block);

   input logic [31:0] inp_block;
   output logic [31:0] out_block;

   assign out_block[31] = inp_block[32-16];
   assign out_block[30] = inp_block[32-7];
   assign out_block[29] = inp_block[32-20];
   assign out_block[28] = inp_block[32-21];
   assign out_block[27] = inp_block[32-29];
   assign out_block[26] = inp_block[32-12];
   assign out_block[25] = inp_block[32-28];
   assign out_block[24] = inp_block[32-17];
   assign out_block[23] = inp_block[32-1];
   assign out_block[22] = inp_block[32-15];
   assign out_block[21] = inp_block[32-23];
   assign out_block[20] = inp_block[32-26];
   assign out_block[19] = inp_block[32-5];
   assign out_block[18] = inp_block[32-18];
   assign out_block[17] = inp_block[32-31];
   assign out_block[16] = inp_block[32-10];
   assign out_block[15] = inp_block[32-2];
   assign out_block[14] = inp_block[32-8];
   assign out_block[13] = inp_block[32-24];
   assign out_block[12] = inp_block[32-14];
   assign out_block[11] = inp_block[32-32];
   assign out_block[10] = inp_block[32-27];
   assign out_block[9] = inp_block[32-3];
   assign out_block[8] = inp_block[32-9];
   assign out_block[7] = inp_block[32-19];
   assign out_block[6] = inp_block[32-13];
   assign out_block[5] = inp_block[32-30];
   assign out_block[4] = inp_block[32-6];
   assign out_block[3] = inp_block[32-22];
   assign out_block[2] = inp_block[32-11];
   assign out_block[1] = inp_block[32-4];
   assign out_block[0] = inp_block[32-25];

endmodule // SF

// Expansion Function
module EF (inp_block, out_block);

   input logic [31:0] inp_block;
   output logic [47:0] out_block;

   assign out_block[47]=inp_block[32-32];
   assign out_block[46]=inp_block[32-1];
   assign out_block[45]=inp_block[32-2];
   assign out_block[44]=inp_block[32-3];
   assign out_block[43]=inp_block[32-4];
   assign out_block[42]=inp_block[32-5];

   assign out_block[41]=inp_block[32-4];
   assign out_block[40]=inp_block[32-5];
   assign out_block[39]=inp_block[32-6];
   assign out_block[38]=inp_block[32-7];
   assign out_block[37]=inp_block[32-8];
   assign out_block[36]=inp_block[32-9];

   assign out_block[35]=inp_block[32-8];
   assign out_block[34]=inp_block[32-9];
   assign out_block[33]=inp_block[32-10];
   assign out_block[32]=inp_block[32-11];
   assign out_block[31]=inp_block[32-12];
   assign out_block[30]=inp_block[32-13];
   
   assign out_block[29]=inp_block[32-12];
   assign out_block[28]=inp_block[32-13];
   assign out_block[27]=inp_block[32-14];
   assign out_block[26]=inp_block[32-15];
   assign out_block[25]=inp_block[32-16];
   assign out_block[24]=inp_block[32-17];

   assign out_block[23]=inp_block[32-16];
   assign out_block[22]=inp_block[32-17];
   assign out_block[21]=inp_block[32-18];
   assign out_block[20]=inp_block[32-19];
   assign out_block[19]=inp_block[32-20];
   assign out_block[18]=inp_block[32-21];

   assign out_block[17]=inp_block[32-20];
   assign out_block[16]=inp_block[32-21];
   assign out_block[15]=inp_block[32-22];
   assign out_block[14]=inp_block[32-23];
   assign out_block[13]=inp_block[32-24];
   assign out_block[12]=inp_block[32-25];

   assign out_block[11]=inp_block[32-24];
   assign out_block[10]=inp_block[32-25];
   assign out_block[9]=inp_block[32-26];
   assign out_block[8]=inp_block[32-27];
   assign out_block[7]=inp_block[32-28];
   assign out_block[6]=inp_block[32-29];

   assign out_block[5]=inp_block[32-28];
   assign out_block[4]=inp_block[32-29];
   assign out_block[3]=inp_block[32-30];
   assign out_block[2]=inp_block[32-31];
   assign out_block[1]=inp_block[32-32];
   assign out_block[0]=inp_block[32-1];

endmodule // EF

module feistel (inp_block, SubKey, out_block);

   input logic [31:0]  inp_block;
   input logic [47:0]  SubKey;
   output logic [31:0] out_block;

   logic [31:0] out;
   logic [47:0] do_xor;
   logic [47:0] ExpansionBlock;

   EF ef (inp_block, ExpansionBlock);
   assign do_xor = ExpansionBlock^SubKey;

   S8_Box s1 (do_xor[5:0], out[3:0]);
   S7_Box s2 (do_xor[11:6], out[7:4]);
   S6_Box s3 (do_xor[17:12], out[11:8]);
   S5_Box s4 (do_xor[23:18], out[15:12]);
   S4_Box s5 (do_xor[29:24], out[19:16]);
   S3_Box s6 (do_xor[35:30], out[23:20]);
   S2_Box s7 (do_xor[41:36], out[27:24]);
   S1_Box s8 (do_xor[47:42], out[31:28]);

   SF sf (out,out_block);

endmodule // Feistel

// DES block round
module round (inp_block, SubKey, out_block);

   input logic [63:0]  inp_block;
   input logic [47:0]  SubKey;
   output logic [63:0] out_block;

   logic [31:0] right_block;
   logic [31:0] left_block;
   logic [31:0] feistel_out;

   assign right_block = inp_block[31:0];
   assign left_block = inp_block[63:32];

   feistel fei (right_block,SubKey,feistel_out);
   assign out_block[31:0] = feistel_out^left_block;
   assign out_block[63:32] = right_block;

endmodule // round1

// Initial Permutation
module IP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-58];
   assign out_block[62] = inp_block[64-50];
   assign out_block[61] = inp_block[64-42];
   assign out_block[60] = inp_block[64-34];
   assign out_block[59] = inp_block[64-26];
   assign out_block[58] = inp_block[64-18];
   assign out_block[57] = inp_block[64-10];
   assign out_block[56] = inp_block[64-2];
   assign out_block[55] = inp_block[64-60];
   assign out_block[54] = inp_block[64-52];   
   assign out_block[53] = inp_block[64-44];   
   assign out_block[52] = inp_block[64-36];
   assign out_block[51] = inp_block[64-28];
   assign out_block[50] = inp_block[64-20];
   assign out_block[49] = inp_block[64-12];
   assign out_block[48] = inp_block[64-4];
   assign out_block[47] = inp_block[64-62];
   assign out_block[46] = inp_block[64-54];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-38];   
   assign out_block[43] = inp_block[64-30];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-14];
   assign out_block[40] = inp_block[64-6];
   assign out_block[39] = inp_block[64-64];
   assign out_block[38] = inp_block[64-56];
   assign out_block[37] = inp_block[64-48];
   assign out_block[36] = inp_block[64-40];
   assign out_block[35] = inp_block[64-32];
   assign out_block[34] = inp_block[64-24];   
   assign out_block[33] = inp_block[64-16];
   assign out_block[32] = inp_block[64-8];   
   assign out_block[31] = inp_block[64-57];
   assign out_block[30] = inp_block[64-49];
   assign out_block[29] = inp_block[64-41];
   assign out_block[28] = inp_block[64-33];
   assign out_block[27] = inp_block[64-25];
   assign out_block[26] = inp_block[64-17];
   assign out_block[25] = inp_block[64-9];   
   assign out_block[24] = inp_block[64-1];   
   assign out_block[23] = inp_block[64-59];
   assign out_block[22] = inp_block[64-51];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-35];
   assign out_block[19] = inp_block[64-27];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-11];
   assign out_block[16] = inp_block[64-3];
   assign out_block[15] = inp_block[64-61];
   assign out_block[14] = inp_block[64-53];   
   assign out_block[13] = inp_block[64-45];
   assign out_block[12] = inp_block[64-37];   
   assign out_block[11] = inp_block[64-29];
   assign out_block[10] = inp_block[64-21];
   assign out_block[9] = inp_block[64-13];
   assign out_block[8] = inp_block[64-5];
   assign out_block[7] = inp_block[64-63];
   assign out_block[6] = inp_block[64-55];
   assign out_block[5] = inp_block[64-47];
   assign out_block[4] = inp_block[64-39];   
   assign out_block[3] = inp_block[64-31];
   assign out_block[2] = inp_block[64-23];    
   assign out_block[1] = inp_block[64-15];
   assign out_block[0] = inp_block[64-7];   

endmodule // IP

// Final Permutation
module FP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-40];
   assign out_block[62] = inp_block[64-8];
   assign out_block[61] = inp_block[64-48];
   assign out_block[60] = inp_block[64-16];
   assign out_block[59] = inp_block[64-56];
   assign out_block[58] = inp_block[64-24];
   assign out_block[57] = inp_block[64-64];
   assign out_block[56] = inp_block[64-32];   
   assign out_block[55] = inp_block[64-39];
   assign out_block[54] = inp_block[64-7];   
   assign out_block[53] = inp_block[64-47];   
   assign out_block[52] = inp_block[64-15];
   assign out_block[51] = inp_block[64-55];
   assign out_block[50] = inp_block[64-23];
   assign out_block[49] = inp_block[64-63];
   assign out_block[48] = inp_block[64-31];   
   assign out_block[47] = inp_block[64-38];
   assign out_block[46] = inp_block[64-6];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-14];   
   assign out_block[43] = inp_block[64-54];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-62];
   assign out_block[40] = inp_block[64-30];   
   assign out_block[39] = inp_block[64-37];
   assign out_block[38] = inp_block[64-5];
   assign out_block[37] = inp_block[64-45];
   assign out_block[36] = inp_block[64-13];
   assign out_block[35] = inp_block[64-53];
   assign out_block[34] = inp_block[64-21];   
   assign out_block[33] = inp_block[64-61];
   assign out_block[32] = inp_block[64-29];   
   assign out_block[31] = inp_block[64-36];
   assign out_block[30] = inp_block[64-4];
   assign out_block[29] = inp_block[64-44];
   assign out_block[28] = inp_block[64-12];
   assign out_block[27] = inp_block[64-52];
   assign out_block[26] = inp_block[64-20];
   assign out_block[25] = inp_block[64-60];   
   assign out_block[24] = inp_block[64-28];   
   assign out_block[23] = inp_block[64-35];
   assign out_block[22] = inp_block[64-3];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-11];
   assign out_block[19] = inp_block[64-51];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-59];
   assign out_block[16] = inp_block[64-27];   
   assign out_block[15] = inp_block[64-34];
   assign out_block[14] = inp_block[64-2];   
   assign out_block[13] = inp_block[64-42];
   assign out_block[12] = inp_block[64-10];   
   assign out_block[11] = inp_block[64-50];
   assign out_block[10] = inp_block[64-18];
   assign out_block[9] = inp_block[64-58];
   assign out_block[8] = inp_block[64-26];   
   assign out_block[7] = inp_block[64-33];
   assign out_block[6] = inp_block[64-1];
   assign out_block[5] = inp_block[64-41];   
   assign out_block[4] = inp_block[64-9];
   assign out_block[3] = inp_block[64-49];    
   assign out_block[2] = inp_block[64-17];
   assign out_block[1] = inp_block[64-57];
   assign out_block[0] = inp_block[64-25];  

endmodule // FP

module S1_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd14;             
	  6'd1  : out_bits = 4'd4;             
	  6'd2  : out_bits = 4'd13;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd2;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd10;             
	  6'd10 : out_bits = 4'd6;             
	  6'd11 : out_bits = 4'd12;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd9;             
	  6'd14 : out_bits = 4'd0;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd0;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd7;             
	  6'd19 : out_bits = 4'd4;             
	  6'd20 : out_bits = 4'd14;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd10;             
	  6'd25 : out_bits = 4'd6;             
	  6'd26 : out_bits = 4'd12;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd9;             
	  6'd29 : out_bits = 4'd5;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd1;             
	  6'd34 : out_bits = 4'd14;             
	  6'd35 : out_bits = 4'd8;             
	  6'd36 : out_bits = 4'd13;             
	  6'd37 : out_bits = 4'd6;             
	  6'd38 : out_bits = 4'd2;             
	  6'd39 : out_bits = 4'd11;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd12;             
	  6'd42 : out_bits = 4'd9;             
	  6'd43 : out_bits = 4'd7;             
	  6'd44 : out_bits = 4'd3;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd0;             
	  6'd48 : out_bits = 4'd15;             
	  6'd49 : out_bits = 4'd12;             
	  6'd50 : out_bits = 4'd8;             
	  6'd51 : out_bits = 4'd2;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd1;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd5;        
	  6'd57 : out_bits = 4'd11;        
	  6'd58 : out_bits = 4'd3;       
	  6'd59 : out_bits = 4'd14;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd13;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S1_Box

module S2_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})             
	  6'd0  : out_bits = 4'd15;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd11;             
	  6'd6  : out_bits = 4'd3;             
	  6'd7  : out_bits = 4'd4;             
	  6'd8  : out_bits = 4'd9;             
	  6'd9  : out_bits = 4'd7;             
	  6'd10 : out_bits = 4'd2;             
	  6'd11 : out_bits = 4'd13;             
	  6'd12 : out_bits = 4'd12;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd10;             
	  6'd16 : out_bits = 4'd3;             
	  6'd17 : out_bits = 4'd13;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd15;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd8;             
	  6'd23 : out_bits = 4'd14;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd1;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd6;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd11;             
	  6'd31 : out_bits = 4'd5;             
	  6'd32 : out_bits = 4'd0;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd7;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd4;             
	  6'd38 : out_bits = 4'd13;             
	  6'd39 : out_bits = 4'd1;             
	  6'd40 : out_bits = 4'd5;             
	  6'd41 : out_bits = 4'd8;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd6;             
	  6'd44 : out_bits = 4'd9;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd2;             
	  6'd47 : out_bits = 4'd15;             
	  6'd48 : out_bits = 4'd13;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd10;             
	  6'd51 : out_bits = 4'd1;             
	  6'd52 : out_bits = 4'd3;             
	  6'd53 : out_bits = 4'd15;            
	  6'd54 : out_bits = 4'd4;             
	  6'd55 : out_bits = 4'd2;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd6;        
	  6'd58 : out_bits = 4'd7;       
	  6'd59 : out_bits = 4'd12;       
	  6'd60 : out_bits = 4'd0;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd14;      
	  6'd63 : out_bits = 4'd9;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S2_Box

module S3_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd10;             
	  6'd1  : out_bits = 4'd0;             
	  6'd2  : out_bits = 4'd9;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd3;             
	  6'd6  : out_bits = 4'd15;             
	  6'd7  : out_bits = 4'd5;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd12;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd4;             
	  6'd14 : out_bits = 4'd2;             
	  6'd15 : out_bits = 4'd8;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd7;             
	  6'd18 : out_bits = 4'd0;             
	  6'd19 : out_bits = 4'd9;             
	  6'd20 : out_bits = 4'd3;             
	  6'd21 : out_bits = 4'd4;             
	  6'd22 : out_bits = 4'd6;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd2;             
	  6'd25 : out_bits = 4'd8;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd12;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd15;             
	  6'd31 : out_bits = 4'd1;             
	  6'd32 : out_bits = 4'd13;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd9;             
	  6'd36 : out_bits = 4'd8;             
	  6'd37 : out_bits = 4'd15;             
	  6'd38 : out_bits = 4'd3;             
	  6'd39 : out_bits = 4'd0;             
	  6'd40 : out_bits = 4'd11;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd2;             
	  6'd43 : out_bits = 4'd12;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd14;             
	  6'd47 : out_bits = 4'd7;             
	  6'd48 : out_bits = 4'd1;             
	  6'd49 : out_bits = 4'd10;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd0;             
	  6'd52 : out_bits = 4'd6;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd4;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd14;       
	  6'd59 : out_bits = 4'd3;       
	  6'd60 : out_bits = 4'd11;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd12;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S3_Box

module S4_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd7;             
	  6'd1  : out_bits = 4'd13;             
	  6'd2  : out_bits = 4'd14;            
	  6'd3  : out_bits = 4'd3;             
	  6'd4  : out_bits = 4'd0;             
	  6'd5  : out_bits = 4'd6;             
	  6'd6  : out_bits = 4'd9;             
	  6'd7  : out_bits = 4'd10;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd2;             
	  6'd10 : out_bits = 4'd8;             
	  6'd11 : out_bits = 4'd5;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd12;             
	  6'd14 : out_bits = 4'd4;             
	  6'd15 : out_bits = 4'd15;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd8;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd5;             
	  6'd20 : out_bits = 4'd6;             
	  6'd21 : out_bits = 4'd15;             
	  6'd22 : out_bits = 4'd0;             
	  6'd23 : out_bits = 4'd3;             
	  6'd24 : out_bits = 4'd4;             
	  6'd25 : out_bits = 4'd7;             
	  6'd26 : out_bits = 4'd2;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd1;             
	  6'd29 : out_bits = 4'd10;             
	  6'd30 : out_bits = 4'd14;             
	  6'd31 : out_bits = 4'd9;             
	  6'd32 : out_bits = 4'd10;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd9;             
	  6'd35 : out_bits = 4'd0;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd11;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd13;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd3;             
	  6'd43 : out_bits = 4'd14;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd2;             
	  6'd46 : out_bits = 4'd8;             
	  6'd47 : out_bits = 4'd4;             
	  6'd48 : out_bits = 4'd3;             
	  6'd49 : out_bits = 4'd15;             
	  6'd50 : out_bits = 4'd0;             
	  6'd51 : out_bits = 4'd6;             
	  6'd52 : out_bits = 4'd10;             
	  6'd53 : out_bits = 4'd1;            
	  6'd54 : out_bits = 4'd13;             
	  6'd55 : out_bits = 4'd8;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd4;        
	  6'd58 : out_bits = 4'd5;       
	  6'd59 : out_bits = 4'd11;       
	  6'd60 : out_bits = 4'd12;       
	  6'd61 : out_bits = 4'd7;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd14;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S4_Box

module S5_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd2;             
	  6'd1  : out_bits = 4'd12;             
	  6'd2  : out_bits = 4'd4;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd7;             
	  6'd5  : out_bits = 4'd10;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd6;             
	  6'd8  : out_bits = 4'd8;             
	  6'd9  : out_bits = 4'd5;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd15;             
	  6'd12 : out_bits = 4'd13;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd14;             
	  6'd15 : out_bits = 4'd9;             
	  6'd16 : out_bits = 4'd14;             
	  6'd17 : out_bits = 4'd11;             
	  6'd18 : out_bits = 4'd2;             
	  6'd19 : out_bits = 4'd12;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd7;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd5;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd15;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd3;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd2;             
	  6'd34 : out_bits = 4'd1;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd13;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd8;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd9;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd5;             
	  6'd44 : out_bits = 4'd6;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd0;             
	  6'd47 : out_bits = 4'd14;             
	  6'd48 : out_bits = 4'd11;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd12;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd14;            
	  6'd54 : out_bits = 4'd2;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd6;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd9;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd4;       
	  6'd62 : out_bits = 4'd5;      
	  6'd63 : out_bits = 4'd3;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S5_Box

module S6_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd12;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd10;            
	  6'd3  : out_bits = 4'd15;             
	  6'd4  : out_bits = 4'd9;             
	  6'd5  : out_bits = 4'd2;             
	  6'd6  : out_bits = 4'd6;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd0;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd4;             
	  6'd12 : out_bits = 4'd14;             
	  6'd13 : out_bits = 4'd7;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd11;             
	  6'd16 : out_bits = 4'd10;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd2;             
	  6'd20 : out_bits = 4'd7;             
	  6'd21 : out_bits = 4'd12;             
	  6'd22 : out_bits = 4'd9;             
	  6'd23 : out_bits = 4'd5;             
	  6'd24 : out_bits = 4'd6;             
	  6'd25 : out_bits = 4'd1;             
	  6'd26 : out_bits = 4'd13;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd9;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd15;             
	  6'd35 : out_bits = 4'd5;             
	  6'd36 : out_bits = 4'd2;             
	  6'd37 : out_bits = 4'd8;             
	  6'd38 : out_bits = 4'd12;             
	  6'd39 : out_bits = 4'd3;             
	  6'd40 : out_bits = 4'd7;             
	  6'd41 : out_bits = 4'd0;             
	  6'd42 : out_bits = 4'd4;             
	  6'd43 : out_bits = 4'd10;             
	  6'd44 : out_bits = 4'd1;             
	  6'd45 : out_bits = 4'd13;             
	  6'd46 : out_bits = 4'd11;             
	  6'd47 : out_bits = 4'd6;             
	  6'd48 : out_bits = 4'd4;             
	  6'd49 : out_bits = 4'd3;             
	  6'd50 : out_bits = 4'd2;             
	  6'd51 : out_bits = 4'd12;             
	  6'd52 : out_bits = 4'd9;             
	  6'd53 : out_bits = 4'd5;            
	  6'd54 : out_bits = 4'd15;             
	  6'd55 : out_bits = 4'd10;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd14;        
	  6'd58 : out_bits = 4'd1;       
	  6'd59 : out_bits = 4'd7;       
	  6'd60 : out_bits = 4'd6;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd8;      
	  6'd63 : out_bits = 4'd13;	  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S6_Box

module S7_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd4;             
	  6'd1  : out_bits = 4'd11;             
	  6'd2  : out_bits = 4'd2;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd15;             
	  6'd5  : out_bits = 4'd0;             
	  6'd6  : out_bits = 4'd8;             
	  6'd7  : out_bits = 4'd13;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd12;             
	  6'd10 : out_bits = 4'd9;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd10;             
	  6'd14 : out_bits = 4'd6;             
	  6'd15 : out_bits = 4'd1;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd0;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd9;             
	  6'd22 : out_bits = 4'd1;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd14;             
	  6'd25 : out_bits = 4'd3;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd2;             
	  6'd29 : out_bits = 4'd15;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd1;             
	  6'd33 : out_bits = 4'd4;             
	  6'd34 : out_bits = 4'd11;             
	  6'd35 : out_bits = 4'd13;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd3;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd14;             
	  6'd40 : out_bits = 4'd10;             
	  6'd41 : out_bits = 4'd15;             
	  6'd42 : out_bits = 4'd6;             
	  6'd43 : out_bits = 4'd8;             
	  6'd44 : out_bits = 4'd0;             
	  6'd45 : out_bits = 4'd5;             
	  6'd46 : out_bits = 4'd9;             
	  6'd47 : out_bits = 4'd2;             
	  6'd48 : out_bits = 4'd6;             
	  6'd49 : out_bits = 4'd11;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd8;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd4;            
	  6'd54 : out_bits = 4'd10;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd5;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd15;       
	  6'd60 : out_bits = 4'd14;       
	  6'd61 : out_bits = 4'd2;       
	  6'd62 : out_bits = 4'd3;      
	  6'd63 : out_bits = 4'd12;  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S7_Box

module S8_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd13;             
	  6'd1  : out_bits = 4'd2;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd4;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd1;             
	  6'd8  : out_bits = 4'd10;             
	  6'd9  : out_bits = 4'd9;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd14;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd12;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd1;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd13;             
	  6'd19 : out_bits = 4'd8;             
	  6'd20 : out_bits = 4'd10;             
	  6'd21 : out_bits = 4'd3;             
	  6'd22 : out_bits = 4'd7;             
	  6'd23 : out_bits = 4'd4;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd5;             
	  6'd26 : out_bits = 4'd6;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd14;             
	  6'd30 : out_bits = 4'd9;             
	  6'd31 : out_bits = 4'd2;             
	  6'd32 : out_bits = 4'd7;             
	  6'd33 : out_bits = 4'd11;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd1;             
	  6'd36 : out_bits = 4'd9;             
	  6'd37 : out_bits = 4'd12;             
	  6'd38 : out_bits = 4'd14;             
	  6'd39 : out_bits = 4'd2;             
	  6'd40 : out_bits = 4'd0;             
	  6'd41 : out_bits = 4'd6;             
	  6'd42 : out_bits = 4'd10;             
	  6'd43 : out_bits = 4'd13;             
	  6'd44 : out_bits = 4'd15;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd8;             
	  6'd48 : out_bits = 4'd2;             
	  6'd49 : out_bits = 4'd1;             
	  6'd50 : out_bits = 4'd14;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd10;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd15;        
	  6'd57 : out_bits = 4'd12;        
	  6'd58 : out_bits = 4'd9;       
	  6'd59 : out_bits = 4'd0;       
	  6'd60 : out_bits = 4'd3;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd11;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S8_Box

module DES (input logic [63:0] key, input logic [63:0] plaintext, 
	    input logic encrypt, output logic [63:0] ciphertext);

   logic [47:0] 	SubKey1, SubKey2, SubKey3, SubKey4;   
   logic [47:0] 	SubKey5, SubKey6, SubKey7, SubKey8;   
   logic [47:0] 	SubKey9, SubKey10, SubKey11, SubKey12;
   logic [47:0] 	SubKey13, SubKey14, SubKey15, SubKey16;

   logic [63:0] 	ip_out;   
   logic [63:0] 	r16_out;   
   
   // SubKey generation
   GenerateKeys k1 (key, SubKey1, SubKey2, SubKey3, SubKey4,
		    SubKey5, SubKey6, SubKey7, SubKey8,
		    SubKey9, SubKey10, SubKey11, SubKey12,
		    SubKey13, SubKey14, SubKey15, SubKey16);

   // Initial Permutation (IP)
   IP b1 (plaintext, ip_out);
   // round 1
   logic [63:0] Round1Out;
   logic [47:0] Mux1Out;
   assign Mux1Out = encrypt ? SubKey1 : SubKey16;
   Round1Out r1(ip_out,Mux1Out,Round1Out);
   // round 2
   logic [63:0] Round2Out;
   logic [47:0] Mux2Out;
   assign Mux2Out = encrypt ? SubKey2 : SubKey15;
   Round2Out r2(Round1Out,Mux2Out,Round2Out);
   // round 3
   logic [63:0] Round3Out;
   logic [47:0] Mux3Out;
   assign Mux3Out = encrypt ? SubKey3 : SubKey14;
   Round3Out r3(Round2Out,Mux3Out,Round3Out);
   // round 4
   logic [63:0] Round4Out;
   logic [47:0] Mux4Out;
   assign Mux4Out = encrypt ? SubKey4 : SubKey13;
   Round4Out r4(Round3Out,Mux4Out,Round4Out);
   // round 5
   logic [63:0] Round5Out;
   logic [47:0] Mux5Out;
   assign Mux5Out = encrypt ? SubKey5 : SubKey12;
   Round5Out r5(Round4Out,Mux5Out,Round5Out);
   // round 6
   logic [63:0] Round6Out;
   logic [47:0] Mux6Out;
   assign Mux6Out = encrypt ? SubKey6 : SubKey11;
   Round6Out r6(Round5Out,Mux6Out,Round6Out);
   // round 7
   logic [63:0] Round7Out;
   logic [47:0] Mux7Out;
   assign Mux7Out = encrypt ? SubKey7 : SubKey10;
   Round7Out r7(Round6Out,Mux7Out,Round7Out);
   // round 8
   logic [63:0] Round8Out;
   logic [47:0] Mux8Out;
   assign Mux8Out = encrypt ? SubKey8 : SubKey9;
   Round8Out r8(Round7Out,Mux8Out,Round8Out);
   // round 9
   logic [63:0] Round9Out;
   logic [47:0] Mux9Out;
   assign Mux9Out = encrypt ? SubKey9 : SubKey8;
   Round9Out r9(Round8Out,Mux9Out,Round9Out);
   // round 10
   logic [63:0] Round10Out;
   logic [47:0] Mux10Out;
   assign Mux10Out = encrypt ? SubKey10 : SubKey7;
   Round10Out r10(Round9Out,Mux10Out,Round10Out);
   // round 11
   logic [63:0] Round11Out;
   logic [47:0] Mux11Out;
   assign Mux11Out = encrypt ? SubKey11 : SubKey6;
   Round11Out r11(Round10Out,Mux11Out,Round11Out);
   // round 12
   logic [63:0] Round12Out;
   logic [47:0] Mux12Out;
   assign Mux12Out = encrypt ? SubKey12 : SubKey5;
   Round12Out r12(Round11Out,Mux12Out,Round12Out);
   // round 13
   logic [63:0] Round13Out;
   logic [47:0] Mux13Out;
   assign Mux13Out = encrypt ? SubKey13 : SubKey4;
   Round13Out r13(Round12Out,Mux13Out,Round13Out);
   // round 14
   logic [63:0] Round14Out;
   logic [47:0] Mux14Out;
   assign Mux14Out = encrypt ? SubKey14 : SubKey3;
   Round14Out r14(Round13Out,Mux14Out,Round14Out);
   // round 15
   logic [63:0] Round15Out;
   logic [47:0] Mux15Out;
   assign Mux15Out = encrypt ? SubKey15 : SubKey2;
   Round15Out r15(Round14Out,Mux15Out,Round15Out);
   // round 16
   logic [63:0] Round16Out;
   logic [47:0] Mux16Out;
   assign Mux16Out = encrypt ? SubKey16 : SubKey1;
   Round16Out r16(Round15Out,Mux16Out,Round16Out);
   // Final Permutation (IP^{-1}) (swap output of round16)
   FP FP({r16_out[31:0], r16_out[63:32]}, ciphertext);
   
endmodule // DES


