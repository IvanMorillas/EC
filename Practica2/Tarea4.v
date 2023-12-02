//: version "1.8.7"

module READ(Data1, RegDst, RegMux, Reg2, Reg1, clk, Data, Data2, clr, ESignExt, RegWrite, SSignExt);
//: interface  /sz:(244, 247) /bd:[ Ti0>clr(131/244) Ti1>clr(131/244) Li0>ESignExt[15:0](202/247) Li1>RegDst(152/247) Li2>RegMux[4:0](117/247) Li3>Reg2[4:0](77/247) Li4>Reg1[4:0](31/247) Li5>ESignExt[15:0](202/247) Li6>RegDst(152/247) Li7>RegMux[4:0](117/247) Li8>Reg2[4:0](77/247) Li9>Reg1[4:0](31/247) Bi0>RegWrite(116/244) Bi1>clk(160/244) Bi2>Data[31:0](62/244) Bi3>RegWrite(116/244) Bi4>clk(160/244) Bi5>Data[31:0](62/244) Ro0<SSignExt[31:0](196/247) Ro1<Data2[31:0](126/247) Ro2<Data1[31:0](63/247) Ro3<SSignExt[31:0](196/247) Ro4<Data2[31:0](126/247) Ro5<Data1[31:0](63/247) ]
output [31:0] Data2;    //: /sn:0 {0}(885,395)(779,395){1}
input [4:0] Reg1;    //: /sn:0 {0}(366,288)(630,288){1}
output [31:0] SSignExt;    //: /sn:0 /dp:1 {0}(752,613)(825,613){1}
output [31:0] Data1;    //: /sn:0 {0}(887,303)(779,303){1}
input [4:0] RegMux;    //: /sn:0 {0}(371,374)(472,374){1}
input RegDst;    //: /sn:0 {0}(367,419)(488,419)(488,387){1}
input [4:0] Reg2;    //: /sn:0 {0}(368,328)(452,328){1}
//: {2}(456,328)(630,328){3}
//: {4}(454,330)(454,354)(472,354){5}
input clr;    //: /sn:0 {0}(687,170)(697,170)(697,255){1}
input RegWrite;    //: /sn:0 {0}(671,504)(671,439){1}
input clk;    //: /sn:0 {0}(739,505)(739,439){1}
input [31:0] Data;    //: /sn:0 {0}(565,404)(630,404){1}
input [15:0] ESignExt;    //: /sn:0 {0}(604,614)(657,614){1}
wire [4:0] w12;    //: /sn:0 {0}(501,364)(630,364){1}
//: enddecls

  //: output g8 (Data1) @(884,303) /sn:0 /w:[ 0 ]
  //: input g4 (RegDst) @(365,419) /sn:0 /w:[ 0 ]
  //: input g3 (RegMux) @(369,374) /sn:0 /w:[ 0 ]
  //: input g2 (Reg2) @(366,328) /sn:0 /w:[ 0 ]
  //: input g1 (Reg1) @(364,288) /sn:0 /w:[ 0 ]
  //: input g10 (clk) @(739,507) /sn:0 /R:1 /w:[ 0 ]
  //: input g6 (Data) @(563,404) /sn:0 /w:[ 0 ]
  //: output g9 (Data2) @(882,395) /sn:0 /w:[ 0 ]
  //: joint g7 (Reg2) @(454, 328) /w:[ 2 -1 1 4 ]
  //: input g12 (clr) @(685,170) /sn:0 /w:[ 0 ]
  //: input g14 (ESignExt) @(602,614) /sn:0 /w:[ 0 ]
  //: input g11 (RegWrite) @(671,506) /sn:0 /R:1 /w:[ 0 ]
  mux g5 (.I0(Reg2), .I1(RegMux), .S(RegDst), .Z(w12));   //: @(488,364) /sn:0 /R:1 /w:[ 5 1 1 0 ] /ss:0 /do:1
  //: output g15 (SSignExt) @(822,613) /sn:0 /w:[ 1 ]
  BRegs32x32 g0 (.clr(clr), .WriteData(Data), .Write(w12), .Read2(Reg2), .Read1(Reg1), .RegWrite(RegWrite), .clk(clk), .Data2(Data2), .Data1(Data1));   //: @(631, 256) /sz:(147, 182) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Li2>3 Li3>1 Bi0>1 Bi1>1 Ro0<1 Ro1<1 ]
  SignExtend g13 (.E(ESignExt), .S(SSignExt));   //: @(658, 571) /sz:(93, 85) /sn:0 /p:[ Li0>1 Ro0<0 ]

endmodule

module SignExtend(S, E);
//: interface  /sz:(93, 85) /bd:[ Li0>E[15:0](43/85) Li1>E[15:0](43/85) Ro0<S[31:0](42/85) Ro1<S[31:0](42/85) ]
input [15:0] E;    //: /sn:0 {0}(225,137)(571,137)(571,155){1}
//: {2}(571,156)(571,165){3}
//: {4}(571,166)(571,175){5}
//: {6}(571,176)(571,185){7}
//: {8}(571,186)(571,195){9}
//: {10}(571,196)(571,205){11}
//: {12}(571,206)(571,215){13}
//: {14}(571,216)(571,225){15}
//: {16}(571,226)(571,235){17}
//: {18}(571,236)(571,245){19}
//: {20}(571,246)(571,255){21}
//: {22}(571,256)(571,265){23}
//: {24}(571,266)(571,275){25}
//: {26}(571,276)(571,285){27}
//: {28}(571,286)(571,295){29}
//: {30}(571,296)(571,305){31}
//: {32}(571,306)(571,315){33}
//: {34}(571,316)(571,325){35}
//: {36}(571,326)(571,335){37}
//: {38}(571,336)(571,345){39}
//: {40}(571,346)(571,355){41}
//: {42}(571,356)(571,365){43}
//: {44}(571,366)(571,375){45}
//: {46}(571,376)(571,385){47}
//: {48}(571,386)(571,395){49}
//: {50}(571,396)(571,405){51}
//: {52}(571,406)(571,415){53}
//: {54}(571,416)(571,425){55}
//: {56}(571,426)(571,435){57}
//: {58}(571,436)(571,445){59}
//: {60}(571,446)(571,455){61}
//: {62}(571,456)(571,465){63}
//: {64}(571,466)(571,501){65}
output [31:0] S;    //: /sn:0 {0}(881,311)(715,311){1}
wire w16;    //: /sn:0 {0}(709,296)(575,296){1}
wire w13;    //: /sn:0 {0}(709,326)(575,326){1}
wire w6;    //: /sn:0 {0}(709,396)(575,396){1}
wire w7;    //: /sn:0 {0}(709,386)(575,386){1}
wire w25;    //: /sn:0 {0}(709,206)(575,206){1}
wire w4;    //: /sn:0 {0}(709,416)(575,416){1}
wire w22;    //: /sn:0 {0}(709,236)(575,236){1}
wire w3;    //: /sn:0 {0}(709,426)(575,426){1}
wire w0;    //: /sn:0 {0}(709,446)(575,446){1}
wire w20;    //: /sn:0 {0}(709,256)(575,256){1}
wire w30;    //: /sn:0 {0}(709,156)(575,156){1}
wire w29;    //: /sn:0 {0}(709,166)(575,166){1}
wire w19;    //: /sn:0 {0}(709,266)(575,266){1}
wire w18;    //: /sn:0 {0}(709,276)(575,276){1}
wire w12;    //: /sn:0 {0}(709,336)(575,336){1}
wire w23;    //: /sn:0 {0}(709,226)(575,226){1}
wire w10;    //: /sn:0 {0}(709,356)(575,356){1}
wire w24;    //: /sn:0 {0}(709,216)(575,216){1}
wire w21;    //: /sn:0 {0}(709,246)(575,246){1}
wire w1;    //: /sn:0 {0}(709,436)(575,436){1}
wire w32;    //: /sn:0 {0}(575,456)(709,456){1}
wire w8;    //: /sn:0 {0}(709,376)(575,376){1}
wire w27;    //: /sn:0 {0}(709,186)(575,186){1}
wire w17;    //: /sn:0 {0}(709,286)(575,286){1}
wire w28;    //: /sn:0 {0}(709,176)(575,176){1}
wire w14;    //: /sn:0 {0}(709,316)(575,316){1}
wire w11;    //: /sn:0 {0}(709,346)(575,346){1}
wire w2;    //: /sn:0 {0}(575,466)(709,466){1}
wire w15;    //: /sn:0 {0}(709,306)(575,306){1}
wire w5;    //: /sn:0 {0}(709,406)(575,406){1}
wire w26;    //: /sn:0 {0}(709,196)(575,196){1}
wire w9;    //: /sn:0 {0}(709,366)(575,366){1}
//: enddecls

  tran g8(.Z(w4), .I(E[5]));   //: @(569,416) /sn:0 /R:2 /w:[ 1 54 53 ] /ss:1
  tran g4(.Z(w32), .I(E[1]));   //: @(569,456) /sn:0 /R:2 /w:[ 0 62 61 ] /ss:1
  tran g16(.Z(w12), .I(E[13]));   //: @(569,336) /sn:0 /R:2 /w:[ 1 38 37 ] /ss:1
  concat g3 (.I0(w2), .I1(w32), .I2(w0), .I3(w1), .I4(w3), .I5(w4), .I6(w5), .I7(w6), .I8(w7), .I9(w8), .I10(w9), .I11(w10), .I12(w11), .I13(w12), .I14(w13), .I15(w14), .I16(w15), .I17(w16), .I18(w17), .I19(w18), .I20(w19), .I21(w20), .I22(w21), .I23(w22), .I24(w23), .I25(w24), .I26(w25), .I27(w26), .I28(w27), .I29(w28), .I30(w29), .I31(w30), .Z(S));   //: @(714,311) /sn:0 /w:[ 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 ] /dr:0
  tran g26(.Z(w22), .I(E[15]));   //: @(569,236) /sn:0 /R:2 /w:[ 1 18 17 ] /ss:1
  tran g17(.Z(w13), .I(E[14]));   //: @(569,326) /sn:0 /R:2 /w:[ 1 36 35 ] /ss:1
  tran g2(.Z(w2), .I(E[0]));   //: @(569,466) /sn:0 /R:2 /w:[ 0 64 63 ] /ss:1
  tran g30(.Z(w26), .I(E[15]));   //: @(569,196) /sn:0 /R:2 /w:[ 1 10 9 ] /ss:1
  tran g23(.Z(w19), .I(E[15]));   //: @(569,266) /sn:0 /R:2 /w:[ 1 24 23 ] /ss:1
  tran g24(.Z(w20), .I(E[15]));   //: @(569,256) /sn:0 /R:2 /w:[ 1 22 21 ] /ss:1
  //: output g1 (S) @(878,311) /sn:0 /w:[ 0 ]
  tran g29(.Z(w25), .I(E[15]));   //: @(569,206) /sn:0 /R:2 /w:[ 1 12 11 ] /ss:1
  tran g18(.Z(w14), .I(E[15]));   //: @(569,316) /sn:0 /R:2 /w:[ 1 34 33 ] /ss:1
  tran g25(.Z(w21), .I(E[15]));   //: @(569,246) /sn:0 /R:2 /w:[ 1 20 19 ] /ss:1
  tran g10(.Z(w6), .I(E[7]));   //: @(569,396) /sn:0 /R:2 /w:[ 1 50 49 ] /ss:1
  tran g6(.Z(w1), .I(E[3]));   //: @(569,436) /sn:0 /R:2 /w:[ 1 58 57 ] /ss:1
  tran g9(.Z(w5), .I(E[6]));   //: @(569,406) /sn:0 /R:2 /w:[ 1 52 51 ] /ss:1
  tran g7(.Z(w3), .I(E[4]));   //: @(569,426) /sn:0 /R:2 /w:[ 1 56 55 ] /ss:1
  tran g31(.Z(w27), .I(E[15]));   //: @(569,186) /sn:0 /R:2 /w:[ 1 8 7 ] /ss:1
  tran g22(.Z(w18), .I(E[15]));   //: @(569,276) /sn:0 /R:2 /w:[ 1 26 25 ] /ss:1
  tran g33(.Z(w29), .I(E[15]));   //: @(569,166) /sn:0 /R:2 /w:[ 1 4 3 ] /ss:1
  tran g12(.Z(w8), .I(E[9]));   //: @(569,376) /sn:0 /R:2 /w:[ 1 46 45 ] /ss:1
  tran g34(.Z(w30), .I(E[15]));   //: @(569,156) /sn:0 /R:2 /w:[ 1 2 1 ] /ss:1
  tran g28(.Z(w24), .I(E[15]));   //: @(569,216) /sn:0 /R:2 /w:[ 1 14 13 ] /ss:1
  tran g14(.Z(w10), .I(E[11]));   //: @(569,356) /sn:0 /R:2 /w:[ 1 42 41 ] /ss:1
  tran g11(.Z(w7), .I(E[8]));   //: @(569,386) /sn:0 /R:2 /w:[ 1 48 47 ] /ss:1
  tran g5(.Z(w0), .I(E[2]));   //: @(569,446) /sn:0 /R:2 /w:[ 1 60 59 ] /ss:1
  tran g21(.Z(w17), .I(E[15]));   //: @(569,286) /sn:0 /R:2 /w:[ 1 28 27 ] /ss:1
  tran g19(.Z(w15), .I(E[15]));   //: @(569,306) /sn:0 /R:2 /w:[ 1 32 31 ] /ss:1
  tran g32(.Z(w28), .I(E[15]));   //: @(569,176) /sn:0 /R:2 /w:[ 1 6 5 ] /ss:1
  tran g20(.Z(w16), .I(E[15]));   //: @(569,296) /sn:0 /R:2 /w:[ 1 30 29 ] /ss:1
  tran g15(.Z(w11), .I(E[12]));   //: @(569,346) /sn:0 /R:2 /w:[ 1 40 39 ] /ss:1
  //: input g0 (E) @(223,137) /sn:0 /w:[ 0 ]
  tran g27(.Z(w23), .I(E[15]));   //: @(569,226) /sn:0 /R:2 /w:[ 1 16 15 ] /ss:1
  tran g13(.Z(w9), .I(E[10]));   //: @(569,366) /sn:0 /R:2 /w:[ 1 44 43 ] /ss:1

endmodule

module FormatoIJ(RegWrite, ALUOp, clk, PCSrc, clr, Jump, RegDst, Inst, PCSortida, Zero, ALURes, PCNext, Data);
//: interface  /sz:(189, 168) /bd:[ Li0>RegWrite(134/168) Li1>RegDst(107/168) Li2>clr(83/168) Li3>clk(56/168) Li4>Inst[31:0](32/168) Bi0>ALURes[31:0](91/189) Bi1>Data[31:0](25/189) Ri0>PCNext[31:0](40/168) Ri1>PCSrc(58/168) Ri2>Jump(83/168) Ri3>ALUop[3:0](142/168) Bo0<Zero(143/189) Ro0<PCSortida[31:0](119/168) ]
output Zero;    //: /sn:0 /dp:1 {0}(721,293)(767,293){1}
input PCSrc;    //: /sn:0 {0}(470,119)(502,119){1}
input [31:0] Inst;    //: /sn:0 {0}(-3,374)(-3,307){1}
//: {2}(-3,306)(-3,222){3}
//: {4}(-3,221)(-3,182){5}
//: {6}(-3,181)(-3,136){7}
//: {8}(-3,135)(-3,113){9}
//: {10}(-3,112)(-3,83){11}
output [31:0] PCSortida;    //: /sn:0 {0}(724,136)(673,136){1}
input [31:0] PCNext;    //: /sn:0 {0}(116,28)(172,28){1}
//: {2}(173,28)(385,28){3}
//: {4}(389,28)(420,28){5}
//: {6}(387,26)(387,-19)(515,-19)(515,103){7}
input RegDst;    //: /sn:0 {0}(61,257)(87,257){1}
input clr;    //: /sn:0 {0}(219,68)(219,104){1}
input RegWrite;    //: /sn:0 {0}(204,376)(204,353){1}
input clk;    //: /sn:0 {0}(248,377)(248,353){1}
input [3:0] ALUOp;    //: /sn:0 /dp:1 {0}(608,224)(608,253){1}
supply0 w2;    //: /sn:0 {0}(434,7)(434,20){1}
input [31:0] Data;    //: /sn:0 {0}(150,379)(150,353){1}
output [31:0] ALURes;    //: /sn:0 /dp:1 {0}(721,342)(768,342){1}
input Jump;    //: /sn:0 {0}(660,193)(660,159){1}
wire [5:0] w6;    //: /sn:0 {0}(173,23)(173,-47)(224,-47){1}
wire [31:0] w16;    //: /sn:0 {0}(525,132)(525,146)(644,146){1}
wire [31:0] w7;    //: /sn:0 /dp:1 {0}(230,-42)(597,-42)(597,126)(644,126){1}
wire [4:0] w4;    //: /sn:0 {0}(87,182)(1,182){1}
wire [4:0] w3;    //: /sn:0 {0}(87,222)(1,222){1}
wire [25:0] w0;    //: /sn:0 {0}(1,113)(12,113)(12,-37)(224,-37){1}
wire [31:0] w12;    //: /sn:0 {0}(449,44)(535,44)(535,103){1}
wire [31:0] w10;    //: /sn:0 {0}(333,231)(469,231)(469,335)(569,335){1}
wire [15:0] w1;    //: /sn:0 {0}(87,307)(1,307){1}
wire w14;    //: /sn:0 {0}(434,68)(434,78){1}
wire [31:0] w11;    //: /sn:0 {0}(333,168)(526,168)(526,284)(569,284){1}
wire [4:0] w5;    //: /sn:0 {0}(87,136)(1,136){1}
wire [31:0] w9;    //: /sn:0 {0}(333,301)(410,301)(410,60)(420,60){1}
//: enddecls

  //: input g4 (RegWrite) @(204,378) /sn:0 /R:1 /w:[ 0 ]
  //: input g8 (ALUOp) @(608,222) /sn:0 /R:3 /w:[ 0 ]
  //: input g3 (clk) @(248,379) /sn:0 /R:1 /w:[ 0 ]
  tran g16(.Z(w4), .I(Inst[20:16]));   //: @(-5,182) /sn:0 /R:2 /w:[ 1 5 6 ] /ss:1
  tran g17(.Z(w3), .I(Inst[15:11]));   //: @(-5,222) /sn:0 /R:2 /w:[ 1 3 4 ] /ss:1
  //: input g26 (PCSrc) @(468,119) /sn:0 /w:[ 0 ]
  //: input g2 (clr) @(219,66) /sn:0 /R:3 /w:[ 0 ]
  mux g23 (.I0(w16), .I1(w7), .S(Jump), .Z(PCSortida));   //: @(660,136) /sn:0 /R:1 /w:[ 1 1 1 1 ] /ss:0 /do:0
  ALU g1 (.ALUOp(ALUOp), .B(w10), .A(w11), .ALURes(ALURes), .Zero(Zero));   //: @(570, 254) /sz:(150, 130) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Ro0<0 Ro1<0 ]
  //: input g24 (Jump) @(660,195) /sn:0 /R:1 /w:[ 0 ]
  //: input g18 (RegDst) @(59,257) /sn:0 /w:[ 0 ]
  //: input g10 (Inst) @(-3,376) /sn:0 /R:1 /w:[ 0 ]
  //: output g25 (PCSortida) @(721,136) /sn:0 /w:[ 0 ]
  //: output g6 (Zero) @(764,293) /sn:0 /w:[ 1 ]
  //: output g7 (ALURes) @(765,342) /sn:0 /w:[ 1 ]
  //: input g9 (PCNext) @(114,28) /sn:0 /w:[ 0 ]
  //: joint g22 (PCNext) @(387, 28) /w:[ 4 6 3 -1 ]
  concat g12 (.I0(w0), .I1(w6), .Z(w7));   //: @(229,-42) /sn:0 /w:[ 1 1 0 ] /dr:0
  //: input g5 (Data) @(150,381) /sn:0 /R:1 /w:[ 0 ]
  tran g11(.Z(w1), .I(Inst[15:0]));   //: @(-5,307) /sn:0 /R:2 /w:[ 1 1 2 ] /ss:1
  tran g14(.Z(w0), .I(Inst[25:0]));   //: @(-5,113) /sn:0 /R:2 /w:[ 0 9 10 ] /ss:1
  add g19 (.A(w9), .B(PCNext), .S(w12), .CI(w2), .CO(w14));   //: @(436,44) /sn:0 /R:1 /w:[ 1 5 0 1 0 ]
  mux g21 (.I0(PCNext), .I1(w12), .S(PCSrc), .Z(w16));   //: @(525,119) /sn:0 /w:[ 7 1 1 0 ] /ss:0 /do:0
  //: supply0 g20 (w2) @(434,1) /sn:0 /R:2 /w:[ 0 ]
  READ g0 (.clr(clr), .Reg1(w5), .Reg2(w4), .RegMux(w3), .RegDst(RegDst), .ESignExt(w1), .Data(Data), .clk(clk), .RegWrite(RegWrite), .Data1(w11), .Data2(w10), .SSignExt(w9));   //: @(88, 105) /sz:(244, 247) /sn:0 /p:[ Ti0>1 Li0>0 Li1>0 Li2>0 Li3>1 Li4>0 Bi0>1 Bi1>1 Bi2>1 Ro0<0 Ro1<0 Ro2<0 ]
  tran g15(.Z(w5), .I(Inst[25:21]));   //: @(-5,136) /sn:0 /R:2 /w:[ 1 7 8 ] /ss:1
  tran g13(.Z(w6), .I(PCNext[31:26]));   //: @(173,26) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:0

endmodule

module ALU(ALURes, Zero, ALUOp, B, A);
//: interface  /sz:(206, 161) /bd:[ Ti0>ALUOp[3:0](53/206) Li0>B[31:0](101/161) Li1>A[31:0](38/161) Ro0<ALURes[31:0](109/161) Ro1<Zero(49/161) ]
input [31:0] B;    //: /sn:0 {0}(463,286)(453,286)(453,296)(397,296)(397,251){1}
//: {2}(399,249)(455,249)(455,230)(465,230){3}
//: {4}(395,249)(346,249){5}
//: {6}(342,249)(288,249){7}
//: {8}(284,249)(226,249){9}
//: {10}(286,251)(286,462)(354,462){11}
//: {12}(344,251)(344,370)(459,370){13}
output Zero;    //: /sn:0 /dp:1 {0}(820,634)(868,634){1}
supply0 w0;    //: /sn:0 {0}(493,315)(473,315)(473,330){1}
input [31:0] A;    //: /sn:0 {0}(228,202)(311,202){1}
//: {2}(315,202)(370,202){3}
//: {4}(374,202)(409,202){5}
//: {6}(413,202)(456,202)(456,225)(465,225){7}
//: {8}(411,204)(411,270)(453,270)(453,281)(463,281){9}
//: {10}(372,204)(372,338)(459,338){11}
//: {12}(313,204)(313,430)(459,430){13}
supply1 w1;    //: /sn:0 {0}(499,401)(473,401)(473,422){1}
input [3:0] ALUOp;    //: /sn:0 /dp:3 {0}(621,576)(635,576)(635,595){1}
//: {2}(635,596)(635,658){3}
output [31:0] ALURes;    //: /sn:0 {0}(746,609)(746,669)(770,669){1}
//: {2}(774,669)(792,669)(792,700){3}
//: {4}(772,667)(772,634)(799,634){5}
wire [31:0] w16;    //: /sn:0 {0}(370,462)(459,462){1}
wire [31:0] w7;    //: /sn:0 {0}(943,512)(943,560)(766,560)(766,580){1}
wire [31:0] w4;    //: /sn:0 {0}(484,283)(736,283)(736,580){1}
wire [2:0] w3;    //: /sn:0 {0}(639,596)(723,596){1}
wire [31:0] w12;    //: /sn:0 {0}(488,446)(754,446){1}
//: {2}(758,446)(943,446)(943,491){3}
//: {4}(756,448)(756,580){5}
wire [31:0] w10;    //: /sn:0 {0}(488,354)(746,354)(746,580){1}
wire w14;    //: /sn:0 {0}(473,470)(473,480){1}
wire [31:0] w2;    //: /sn:0 {0}(486,228)(726,228)(726,580){1}
wire [4:0] w15;    //: /sn:0 /dp:1 {0}(859,482)(859,501)(906,501){1}
wire Zero0;    //: /sn:0 {0}(473,378)(473,385){1}
//: enddecls

  //: output g4 (ALURes) @(792,697) /sn:0 /R:3 /w:[ 3 ]
  //: joint g8 (B) @(397, 249) /w:[ 2 -1 4 1 ]
  //: output g3 (Zero) @(865,634) /sn:0 /w:[ 1 ]
  //: joint g16 (A) @(313, 202) /w:[ 2 -1 1 12 ]
  //: supply0 g17 (w0) @(499,315) /sn:0 /R:1 /w:[ 0 ]
  //: input g2 (ALUOp) @(619,576) /sn:0 /w:[ 0 ]
  //: joint g23 (ALURes) @(772, 669) /w:[ 2 4 1 -1 ]
  tran g24(.Z(w3), .I(ALUOp[2:0]));   //: @(633,596) /sn:0 /R:2 /w:[ 0 2 1 ] /ss:1
  //: input g1 (B) @(224,249) /sn:0 /w:[ 9 ]
  //: supply1 g18 (w1) @(499,412) /sn:0 /R:3 /w:[ 0 ]
  add g10 (.A(B), .B(A), .S(w10), .CI(w0), .CO(Zero0));   //: @(475,354) /sn:0 /R:1 /w:[ 13 11 0 1 0 ]
  or g6 (.I0(A), .I1(B), .Z(w4));   //: @(474,283) /sn:0 /w:[ 9 0 0 ]
  //: joint g7 (A) @(411, 202) /w:[ 6 -1 5 8 ]
  mux g9 (.I0(w2), .I1(w4), .I2(w10), .I3(w12), .I4(w7), .S(w3), .Z(ALURes));   //: @(746,596) /sn:0 /w:[ 1 1 1 5 1 1 0 ] /ss:0 /do:0
  //: dip g22 (w15) @(859,472) /sn:0 /w:[ 0 ] /st:31
  //: joint g12 (B) @(344, 249) /w:[ 5 -1 6 12 ]
  and g5 (.I0(A), .I1(B), .Z(w2));   //: @(476,228) /sn:0 /w:[ 7 3 0 ]
  //: joint g11 (A) @(372, 202) /w:[ 4 -1 3 10 ]
  not g14 (.I(B), .Z(w16));   //: @(360,462) /sn:0 /w:[ 11 0 ]
  rshift g21 (.I(w12), .Z(w7), .S(w15));   //: @(943,501) /sn:0 /w:[ 3 0 1 ]
  nor g19 (.I0(ALURes), .Z(Zero));   //: @(810,634) /sn:0 /w:[ 5 0 ]
  //: joint g20 (w12) @(756, 446) /w:[ 2 -1 1 4 ]
  //: input g0 (A) @(226,202) /sn:0 /w:[ 0 ]
  //: joint g15 (B) @(286, 249) /w:[ 7 -1 8 10 ]
  add g13 (.A(w16), .B(A), .S(w12), .CI(w1), .CO(w14));   //: @(475,446) /sn:0 /R:1 /w:[ 1 13 0 1 0 ]

endmodule

module BRegs32x32(Read2, Write, Read1, Data2, Data1, clr, clk, RegWrite, WriteData);
//: interface  /sz:(147, 182) /bd:[ Ti0>clr(66/147) Ti1>clr(66/147) Li0>WriteData[31:0](148/182) Li1>Write[4:0](108/182) Li2>Read2[4:0](72/182) Li3>Read1[4:0](32/182) Li4>WriteData[31:0](148/182) Li5>Write[4:0](108/182) Li6>Read2[4:0](72/182) Li7>Read1[4:0](32/182) Bi0>RegWrite(40/147) Bi1>clk(108/147) Bi2>RegWrite(40/147) Bi3>clk(108/147) Ro0<Data2[31:0](139/182) Ro1<Data1[31:0](47/182) Ro2<Data2[31:0](139/182) Ro3<Data1[31:0](47/182) ]
output [31:0] Data2;    //: /sn:0 {0}(668,485)(668,472)(669,472)(669,445){1}
input [4:0] Write;    //: /sn:0 {0}(-238,-38)(-138,-38)(-138,-37)(-66,-37){1}
//: {2}(-65,-37)(-28,-37){3}
//: {4}(-27,-37)(-16,-37){5}
input [31:0] WriteData;    //: /sn:0 {0}(669,157)(669,75)(481,75){1}
//: {2}(477,75)(292,75){3}
//: {4}(288,75)(89,75){5}
//: {6}(85,75)(-104,75)(-104,73)(-237,73){7}
//: {8}(87,77)(87,157){9}
//: {10}(290,77)(290,107)(291,107)(291,152){11}
//: {12}(479,77)(479,157){13}
output [31:0] Data1;    //: /sn:0 {0}(59,382)(59,465){1}
supply1 w21;    //: /sn:0 {0}(82,3)(57,3)(57,-11){1}
input clr;    //: /sn:0 {0}(721,193)(731,193)(731,-83)(543,-83){1}
//: {2}(539,-83)(355,-83){3}
//: {4}(351,-83)(150,-83){5}
//: {6}(146,-83)(-44,-83)(-44,-92)(-235,-92){7}
//: {8}(148,-81)(148,193)(139,193){9}
//: {10}(353,-81)(353,188)(343,188){11}
//: {12}(541,-81)(541,193)(531,193){13}
input RegWrite;    //: /sn:0 {0}(-237,263)(-71,263){1}
//: {2}(-67,263)(171,263){3}
//: {4}(175,263)(370,263){5}
//: {6}(374,263)(552,263)(552,219)(556,219){7}
//: {8}(372,261)(372,219)(383,219){9}
//: {10}(173,261)(173,214)(183,214){11}
//: {12}(-69,261)(-69,219)(-38,219){13}
input clk;    //: /sn:0 {0}(556,214)(542,214)(542,285)(364,285){1}
//: {2}(362,283)(362,214)(383,214){3}
//: {4}(360,285)(167,285){5}
//: {6}(165,283)(165,209)(183,209){7}
//: {8}(163,285)(-56,285){9}
//: {10}(-58,283)(-58,214)(-38,214){11}
//: {12}(-60,285)(-237,285){13}
input [4:0] Read1;    //: {0}(-237,96)(-208,96)(-208,95)(-124,95){1}
//: {2}(-123,95)(-96,95){3}
//: {4}(-95,95)(-78,95){5}
input [4:0] Read2;    //: {0}(-237,145)(-141,145){1}
//: {2}(-140,145)(-123,145)(-123,144)(-94,144){3}
//: {4}(-93,144)(-79,144){5}
wire [1:0] w6;    //: /sn:0 {0}(36,369)(-123,369)(-123,99){1}
wire w16;    //: /sn:0 {0}(39,205)(-50,205)(-50,39)(88,39)(88,19){1}
wire w4;    //: /sn:0 {0}(112,19)(112,46)(370,46)(370,205)(431,205){1}
wire [31:0] w3;    //: /sn:0 {0}(77,353)(77,334)(659,334)(659,228){1}
wire [31:0] R2;    //: {0}(65,353)(65,319)(469,319)(469,228){1}
wire [31:0] w0;    //: /sn:0 {0}(651,416)(651,398)(105,398)(105,228){1}
wire w22;    //: /sn:0 {0}(404,217)(431,217){1}
wire w20;    //: /sn:0 {0}(124,19)(124,29)(556,29)(556,205)(621,205){1}
wire [2:0] w19;    //: /sn:0 {0}(431,169)(419,169)(419,109){1}
//: {2}(421,107)(606,107)(606,169)(621,169){3}
//: {4}(417,107)(297,107)(297,106)(231,106){5}
//: {6}(227,106)(25,106){7}
//: {8}(21,106)(-95,106)(-95,99){9}
//: {10}(23,108)(23,169)(39,169){11}
//: {12}(229,108)(229,164)(243,164){13}
wire [2:0] w18;    //: /sn:0 {0}(431,180)(402,180)(402,125){1}
//: {2}(404,123)(589,123)(589,180)(621,180){3}
//: {4}(400,123)(279,123)(279,122)(212,122){5}
//: {6}(208,122)(8,122){7}
//: {8}(4,122)(-93,122)(-93,139){9}
//: {10}(6,124)(6,180)(39,180){11}
//: {12}(210,124)(210,175)(243,175){13}
wire w23;    //: /sn:0 {0}(577,217)(621,217){1}
wire [1:0] w10;    //: /sn:0 {0}(-140,149)(-140,432)(646,432){1}
wire [2:0] w24;    //: /sn:0 {0}(431,193)(381,193)(381,141){1}
//: {2}(383,139)(568,139)(568,193)(621,193){3}
//: {4}(379,139)(260,139)(260,138)(195,138){5}
//: {6}(191,138)(-13,138){7}
//: {8}(-17,138)(-65,138)(-65,-33){9}
//: {10}(-15,140)(-15,193)(39,193){11}
//: {12}(193,140)(193,188)(243,188){13}
wire w31;    //: /sn:0 {0}(243,200)(178,200)(178,60)(100,60)(100,19){1}
wire w1;    //: /sn:0 {0}(-17,217)(39,217){1}
wire [31:0] R1;    //: {0}(281,223)(281,308)(53,308)(53,353){1}
wire [31:0] R3;    //: {0}(687,228)(687,416){1}
wire [1:0] w11;    //: /sn:0 {0}(-27,-33)(-27,-23)(106,-23)(106,-10){1}
wire w2;    //: /sn:0 {0}(243,212)(204,212){1}
wire [31:0] R0;    //: {0}(77,228)(77,299)(41,299)(41,353){1}
wire [31:0] w5;    //: /sn:0 {0}(675,416)(675,372)(497,372)(497,228){1}
wire [31:0] w9;    //: /sn:0 {0}(663,416)(663,387)(309,387)(309,223){1}
//: enddecls

  //: joint g8 (w18) @(6, 122) /w:[ 7 -1 8 10 ]
  //: input g4 (Read2) @(-239,145) /sn:0 /w:[ 0 ]
  //: joint g44 (clr) @(353, -83) /w:[ 3 -1 4 10 ]
  //: input g3 (Write) @(-240,-38) /sn:0 /w:[ 0 ]
  //: joint g16 (clk) @(165, 285) /w:[ 5 6 8 -1 ]
  //: joint g47 (clr) @(541, -83) /w:[ 1 -1 2 12 ]
  //: input g17 (Read1) @(-239,96) /sn:0 /w:[ 0 ]
  //: joint g26 (w19) @(229, 106) /w:[ 5 -1 6 12 ]
  //: output g2 (Data2) @(668,482) /sn:0 /R:3 /w:[ 0 ]
  tran g23(.Z(w24), .I(Write[2:0]));   //: @(-65,-39) /sn:0 /R:1 /w:[ 9 1 2 ] /ss:1
  tran g30(.Z(w10), .I(Read2[4:3]));   //: @(-140,143) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1
  //: output g1 (Data1) @(59,462) /sn:0 /R:3 /w:[ 1 ]
  //: joint g39 (RegWrite) @(372, 263) /w:[ 6 8 5 -1 ]
  Regs8x32 g24 (.DIN(WriteData), .SD(w24), .SA(w19), .SB(w18), .RegWr(w31), .clk(w2), .clr(clr), .AOUT(R1), .BOUT(w9));   //: @(244, 153) /sz:(98, 69) /sn:0 /p:[ Ti0>11 Li0>13 Li1>13 Li2>13 Li3>0 Li4>0 Ri0>11 Bo0<0 Bo1<1 ]
  Regs8x32 g29 (.DIN(WriteData), .SD(w24), .SA(w19), .SB(w18), .RegWr(w4), .clk(w22), .clr(clr), .AOUT(R2), .BOUT(w5));   //: @(432, 158) /sz:(98, 69) /sn:0 /p:[ Ti0>13 Li0>0 Li1>0 Li2>0 Li3>1 Li4>1 Ri0>13 Bo0<1 Bo1<1 ]
  //: comment g51 /dolink:0 /link:"" @(395,229) /sn:0
  //: /line:"Regs 16-23"
  //: /end
  tran g18(.Z(w19), .I(Read1[2:0]));   //: @(-95,93) /sn:0 /R:1 /w:[ 9 3 4 ] /ss:1
  //: supply1 g10 (w21) @(68,-11) /sn:0 /w:[ 1 ]
  //: joint g25 (w18) @(210, 122) /w:[ 5 -1 6 12 ]
  //: comment g49 /dolink:0 /link:"" @(210,225) /sn:0
  //: /line:"Regs 8-15"
  //: /end
  //: comment g50 /dolink:0 /link:"" @(585,229) /sn:0
  //: /line:"Regs 24-31"
  //: /end
  Regs8x32 g6 (.DIN(WriteData), .SD(w24), .SA(w19), .SB(w18), .RegWr(w16), .clk(w1), .clr(clr), .AOUT(R0), .BOUT(w0));   //: @(40, 158) /sz:(98, 69) /sn:0 /p:[ Ti0>9 Li0>11 Li1>11 Li2>11 Li3>0 Li4>1 Ri0>9 Bo0<0 Bo1<1 ]
  //: joint g7 (w19) @(23, 106) /w:[ 7 -1 8 10 ]
  demux g9 (.I(w11), .E(w21), .Z0(w16), .Z1(w31), .Z2(w4), .Z3(w20));   //: @(106,3) /sn:0 /w:[ 1 0 1 1 0 0 ]
  and g35 (.I0(clk), .I1(RegWrite), .Z(w22));   //: @(394,217) /sn:0 /delay:" 1" /w:[ 3 9 0 ]
  tran g31(.Z(w6), .I(Read1[4:3]));   //: @(-123,93) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  tran g22(.Z(w18), .I(Read2[2:0]));   //: @(-93,142) /sn:0 /R:1 /w:[ 9 3 4 ] /ss:0
  and g36 (.I0(clk), .I1(RegWrite), .Z(w23));   //: @(567,217) /sn:0 /delay:" 1" /w:[ 0 7 0 ]
  //: joint g41 (w19) @(419, 107) /w:[ 2 -1 4 1 ]
  //: joint g45 (WriteData) @(479, 75) /w:[ 1 -1 2 12 ]
  and g33 (.I0(clk), .I1(RegWrite), .Z(w1));   //: @(-27,217) /sn:0 /delay:" 1" /w:[ 11 13 0 ]
  //: input g42 (clr) @(-237,-92) /sn:0 /w:[ 7 ]
  //: joint g40 (w18) @(402, 123) /w:[ 2 -1 4 1 ]
  //: input g12 (clk) @(-239,285) /sn:0 /w:[ 13 ]
  and g34 (.I0(clk), .I1(RegWrite), .Z(w2));   //: @(194,212) /sn:0 /delay:" 1" /w:[ 7 11 1 ]
  //: joint g28 (w24) @(381, 139) /w:[ 2 -1 4 1 ]
  Regs8x32 g46 (.DIN(WriteData), .SD(w24), .SA(w19), .SB(w18), .RegWr(w20), .clk(w23), .clr(clr), .AOUT(w3), .BOUT(R3));   //: @(622, 158) /sz:(98, 69) /sn:0 /p:[ Ti0>0 Li0>3 Li1>3 Li2>3 Li3>1 Li4>1 Ri0>0 Bo0<1 Bo1<0 ]
  //: joint g11 (w24) @(-15, 138) /w:[ 7 -1 8 10 ]
  mux g14 (.I0(R0), .I1(R1), .I2(R2), .I3(w3), .S(w6), .Z(Data1));   //: @(59,369) /sn:0 /w:[ 1 1 0 0 0 0 ] /ss:0 /do:0
  tran g5(.Z(w11), .I(Write[4:3]));   //: @(-27,-39) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  //: joint g19 (clk) @(-58, 285) /w:[ 9 10 12 -1 ]
  //: joint g21 (w24) @(193, 138) /w:[ 5 -1 6 12 ]
  //: input g32 (RegWrite) @(-239,263) /sn:0 /w:[ 0 ]
  //: joint g20 (WriteData) @(87, 75) /w:[ 5 -1 6 8 ]
  //: joint g38 (RegWrite) @(173, 263) /w:[ 4 10 3 -1 ]
  //: joint g15 (clk) @(362, 285) /w:[ 1 2 4 -1 ]
  //: joint g43 (clr) @(148, -83) /w:[ 5 -1 6 8 ]
  //: input g0 (WriteData) @(-239,73) /sn:0 /w:[ 7 ]
  //: joint g27 (WriteData) @(290, 75) /w:[ 3 -1 4 10 ]
  //: comment g48 /dolink:0 /link:"" @(11,228) /sn:0
  //: /line:"Regs 0-7"
  //: /end
  //: joint g37 (RegWrite) @(-69, 263) /w:[ 2 12 1 -1 ]
  mux g13 (.I0(w0), .I1(w9), .I2(w5), .I3(R3), .S(w10), .Z(Data2));   //: @(669,432) /sn:0 /w:[ 0 0 0 1 1 1 ] /ss:0 /do:0

endmodule

module Regs8x32(SB, SA, BOUT, AOUT, clk, clr, RegWr, SD, DIN);
//: interface  /sz:(98, 69) /bd:[ Ti0>DIN[31:0](47/98) Ti1>DIN[31:0](47/98) Ti2>DIN[31:0](47/98) Ti3>DIN[31:0](47/98) Li0>clk(59/69) Li1>RegWr(47/69) Li2>SB[2:0](22/69) Li3>SA[2:0](11/69) Li4>SD[2:0](35/69) Li5>clk(59/69) Li6>RegWr(47/69) Li7>SB[2:0](22/69) Li8>SA[2:0](11/69) Li9>SD[2:0](35/69) Li10>clk(59/69) Li11>RegWr(47/69) Li12>SB[2:0](22/69) Li13>SA[2:0](11/69) Li14>SD[2:0](35/69) Li15>clk(59/69) Li16>RegWr(47/69) Li17>SB[2:0](22/69) Li18>SA[2:0](11/69) Li19>SD[2:0](35/69) Ri0>clr(35/69) Ri1>clr(35/69) Ri2>clr(35/69) Ri3>clr(35/69) Bo0<BOUT[31:0](65/98) Bo1<AOUT[31:0](37/98) Bo2<BOUT[31:0](65/98) Bo3<AOUT[31:0](37/98) Bo4<BOUT[31:0](65/98) Bo5<AOUT[31:0](37/98) Bo6<BOUT[31:0](65/98) Bo7<AOUT[31:0](37/98) ]
input [31:0] DIN;    //: /sn:0 {0}(531,269)(531,318){1}
//: {2}(533,320)(627,320){3}
//: {4}(631,320)(715,320){5}
//: {6}(719,320)(807,320)(807,429){7}
//: {8}(717,322)(717,352){9}
//: {10}(629,322)(629,433){11}
//: {12}(529,320)(435,320){13}
//: {14}(431,320)(342,320){15}
//: {16}(338,320)(264,320){17}
//: {18}(260,320)(181,320)(181,352){19}
//: {20}(262,322)(262,439){21}
//: {22}(340,322)(340,351){23}
//: {24}(433,322)(433,436){25}
//: {26}(531,322)(531,348){27}
output [31:0] BOUT;    //: /sn:0 {0}(516,697)(516,672){1}
input [2:0] SD;    //: /sn:0 {0}(782,138)(852,138)(852,156){1}
supply1 w21;    //: /sn:0 {0}(828,169)(801,169)(801,153){1}
input [2:0] SB;    //: /sn:0 {0}(466,659)(493,659){1}
input RegWr;    //: /sn:0 {0}(48,363)(68,363)(68,378)(82,378){1}
input [2:0] SA;    //: /sn:0 {0}(256,657)(231,657){1}
input clr;    //: /sn:0 /dp:1 {0}(959,337)(1032,337){1}
input clk;    //: /sn:0 {0}(82,383)(68,383)(68,398)(55,398){1}
output [31:0] AOUT;    //: /sn:0 {0}(279,670)(279,702){1}
wire [31:0] w16;    //: /sn:0 {0}(531,369)(531,574)(520,574){1}
//: {2}(516,574)(282,574)(282,641){3}
//: {4}(518,576)(518,587)(519,587)(519,643){5}
wire w7;    //: /sn:0 {0}(472,451)(513,451)(513,405)(848,405)(848,185){1}
wire [31:0] R5;    //: {0}(288,641)(288,586)(525,586){1}
//: {2}(529,586)(629,586)(629,454){3}
//: {4}(527,588)(527,617)(525,617)(525,643){5}
wire w4;    //: /sn:0 {0}(943,337)(906,337){1}
//: {2}(902,337)(767,337){3}
//: {4}(763,337)(588,337){5}
//: {6}(584,337)(390,337){7}
//: {8}(386,337)(231,337)(231,357)(220,357){9}
//: {10}(388,339)(388,356)(379,356){11}
//: {12}(586,339)(586,353)(570,353){13}
//: {14}(765,339)(765,357)(756,357){15}
//: {16}(904,339)(904,417)(865,417){17}
//: {18}(861,417)(675,417){19}
//: {20}(671,417)(489,417){21}
//: {22}(485,417)(302,417)(302,444)(301,444){23}
//: {24}(487,419)(487,441)(472,441){25}
//: {26}(673,419)(673,438)(668,438){27}
//: {28}(863,419)(863,434)(846,434){29}
wire [31:0] R2;    //: {0}(262,641)(262,537){1}
//: {2}(264,535)(499,535)(499,643){3}
//: {4}(262,533)(262,460){5}
wire w0;    //: /sn:0 {0}(770,439)(764,439)(764,481)(579,481){1}
//: {2}(577,479)(577,443)(592,443){3}
//: {4}(575,481)(390,481){5}
//: {6}(388,479)(388,446)(396,446){7}
//: {8}(386,481)(214,481){9}
//: {10}(212,479)(212,449)(225,449){11}
//: {12}(210,481)(125,481)(125,383){13}
//: {14}(127,381)(291,381){15}
//: {16}(295,381)(477,381){17}
//: {18}(481,381)(660,381)(660,362)(680,362){19}
//: {20}(479,379)(479,358)(494,358){21}
//: {22}(293,379)(293,361)(303,361){23}
//: {24}(125,379)(125,362)(144,362){25}
//: {26}(123,381)(103,381){27}
wire w3;    //: /sn:0 {0}(835,185)(835,397)(330,397)(330,454)(301,454){1}
wire [31:0] R7;    //: {0}(807,450)(807,609)(541,609){1}
//: {2}(537,609)(302,609)(302,641){3}
//: {4}(539,611)(539,643){5}
wire w12;    //: /sn:0 {0}(756,367)(787,367)(787,258)(868,258)(868,185){1}
wire w10;    //: /sn:0 {0}(846,444)(875,444)(875,185){1}
wire [31:0] R4;    //: {0}(340,372)(340,545){1}
//: {2}(342,547)(505,547)(505,643){3}
//: {4}(338,547)(268,547)(268,641){5}
wire [31:0] R3;    //: {0}(512,643)(512,559)(435,559){1}
//: {2}(433,557)(433,457){3}
//: {4}(431,559)(275,559)(275,641){5}
wire w8;    //: /sn:0 {0}(220,367)(249,367)(249,213)(828,213)(828,185){1}
wire Z5;    //: /sn:0 {0}(861,185)(861,413)(700,413)(700,448)(668,448){1}
wire w14;    //: /sn:0 {0}(379,366)(414,366)(414,229)(841,229)(841,185){1}
wire [31:0] R0;    //: {0}(492,643)(492,523)(257,523){1}
//: {2}(253,523)(181,523)(181,373){3}
//: {4}(255,525)(255,641){5}
wire w15;    //: /sn:0 {0}(570,363)(608,363)(608,244)(855,244)(855,185){1}
wire [31:0] R10;    //: /sn:0 {0}(295,641)(295,600)(530,600){1}
//: {2}(534,600)(717,600)(717,373){3}
//: {4}(532,602)(532,643){5}
//: enddecls

  //: joint g8 (w16) @(518, 574) /w:[ 1 -1 2 4 ]
  //: input g4 (SB) @(464,659) /sn:0 /w:[ 0 ]
  //: input g3 (SA) @(229,657) /sn:0 /w:[ 1 ]
  //: joint g16 (R3) @(433, 559) /w:[ 1 2 4 -1 ]
  //: joint g17 (R4) @(340, 547) /w:[ 2 1 4 -1 ]
  //: joint g26 (DIN) @(340, 320) /w:[ 15 -1 16 22 ]
  register R5 (.Q(R5), .D(DIN), .EN(Z5), .CLR(w4), .CK(!w0));   //: @(629,443) /w:[ 3 11 1 27 3 ]
  //: output g2 (BOUT) @(516,694) /sn:0 /R:3 /w:[ 0 ]
  //: joint g23 (w4) @(765, 337) /w:[ 3 -1 4 14 ]
  //: joint g30 (w0) @(212, 481) /w:[ 9 10 12 -1 ]
  //: output g1 (AOUT) @(279,699) /sn:0 /R:3 /w:[ 1 ]
  //: joint g39 (DIN) @(262, 320) /w:[ 17 -1 18 20 ]
  //: joint g24 (DIN) @(531, 320) /w:[ 2 1 12 26 ]
  //: joint g29 (w0) @(388, 481) /w:[ 5 6 8 -1 ]
  register R2 (.Q(R4), .D(DIN), .EN(w14), .CLR(w4), .CK(!w0));   //: @(340,361) /w:[ 0 23 0 11 23 ]
  register R7 (.Q(R7), .D(DIN), .EN(w10), .CLR(w4), .CK(!w0));   //: @(807,439) /w:[ 0 7 0 29 0 ]
  //: joint g18 (R2) @(262, 535) /w:[ 2 4 -1 1 ]
  //: supply1 g10 (w21) @(812,153) /sn:0 /w:[ 1 ]
  not g25 (.I(clr), .Z(w4));   //: @(953,337) /sn:0 /R:2 /w:[ 0 0 ]
  //: joint g6 (R7) @(539, 609) /w:[ 1 -1 2 4 ]
  register R6 (.Q(R10), .D(DIN), .EN(w12), .CLR(w4), .CK(!w0));   //: @(717,362) /w:[ 3 9 0 15 19 ]
  //: joint g7 (R10) @(532, 600) /w:[ 2 -1 1 4 ]
  register R4 (.Q(w16), .D(DIN), .EN(w15), .CLR(w4), .CK(!w0));   //: @(531,358) /w:[ 0 27 0 13 21 ]
  demux g9 (.I(SD), .E(w21), .Z0(!w8), .Z1(!w3), .Z2(!w14), .Z3(!w7), .Z4(!w15), .Z5(!Z5), .Z6(!w12), .Z7(!w10));   //: @(852,169) /sn:0 /w:[ 1 0 1 0 1 1 1 0 1 1 ]
  and g35 (.I0(RegWr), .I1(clk), .Z(w0));   //: @(93,381) /sn:0 /delay:" 1" /w:[ 1 0 27 ]
  //: joint g31 (w4) @(863, 417) /w:[ 17 -1 18 28 ]
  //: joint g22 (w4) @(586, 337) /w:[ 5 -1 6 12 ]
  register R3 (.Q(R3), .D(DIN), .EN(w7), .CLR(w4), .CK(!w0));   //: @(433,446) /w:[ 3 25 0 25 7 ]
  register R1 (.Q(R2), .D(DIN), .EN(w3), .CLR(w4), .CK(!w0));   //: @(262,449) /w:[ 5 21 1 23 11 ]
  //: joint g36 (w4) @(904, 337) /w:[ 1 -1 2 16 ]
  //: joint g41 (DIN) @(717, 320) /w:[ 6 -1 5 8 ]
  //: joint g33 (w4) @(673, 417) /w:[ 19 -1 20 26 ]
  //: joint g42 (DIN) @(629, 320) /w:[ 4 -1 3 10 ]
  //: joint g40 (DIN) @(433, 320) /w:[ 13 -1 14 24 ]
  //: joint g12 (w0) @(479, 381) /w:[ 18 20 17 -1 ]
  //: input g34 (clk) @(53,398) /sn:0 /w:[ 1 ]
  //: input g28 (clr) @(1034,337) /sn:0 /R:2 /w:[ 1 ]
  //: joint g11 (w0) @(293, 381) /w:[ 16 22 15 -1 ]
  //: input g5 (RegWr) @(46,363) /sn:0 /w:[ 0 ]
  mux g14 (.I0(R0), .I1(R2), .I2(R4), .I3(R3), .I4(w16), .I5(R5), .I6(R10), .I7(R7), .S(SA), .Z(AOUT));   //: @(279,657) /sn:0 /w:[ 5 0 5 5 3 0 0 3 0 0 ] /ss:0 /do:0
  //: joint g19 (R0) @(255, 523) /w:[ 1 -1 2 4 ]
  //: joint g21 (w4) @(388, 337) /w:[ 7 -1 8 10 ]
  //: joint g32 (w4) @(487, 417) /w:[ 21 -1 22 24 ]
  //: input g20 (SD) @(780,138) /sn:0 /w:[ 0 ]
  register R0 (.Q(R0), .D(DIN), .EN(w8), .CLR(w4), .CK(!w0));   //: @(181,362) /w:[ 3 19 0 9 25 ]
  //: joint g38 (w0) @(577, 481) /w:[ 1 2 4 -1 ]
  //: joint g15 (R5) @(527, 586) /w:[ 2 -1 1 4 ]
  //: input g0 (DIN) @(531,267) /sn:0 /R:3 /w:[ 0 ]
  //: joint g27 (w0) @(125, 381) /w:[ 14 24 26 13 ]
  mux g13 (.I0(R0), .I1(R2), .I2(R4), .I3(R3), .I4(w16), .I5(R5), .I6(R10), .I7(R7), .S(SB), .Z(BOUT));   //: @(516,659) /sn:0 /w:[ 0 3 3 0 5 5 5 5 1 1 ] /ss:0 /do:0

endmodule

module main;    //: root_module
wire [31:0] w6;    //: /sn:0 {0}(378,314)(378,394)(553,394)(553,388){1}
wire [31:0] w13;    //: /sn:0 /dp:1 {0}(169,131)(169,177)(286,177){1}
wire [31:0] w7;    //: /sn:0 {0}(688,248)(688,264)(477,264){1}
wire [31:0] w4;    //: /sn:0 /dp:1 {0}(248,356)(248,379)(312,379)(312,314){1}
wire w0;    //: /sn:0 {0}(134,201)(286,201){1}
wire w3;    //: /sn:0 {0}(176,279)(286,279){1}
wire w10;    //: /sn:0 {0}(570,218)(570,200)(477,200){1}
wire w1;    //: /sn:0 {0}(268,228)(286,228){1}
wire [3:0] w8;    //: /sn:0 /dp:1 {0}(477,287)(547,287)(547,345)(621,345)(621,335){1}
wire w2;    //: /sn:0 {0}(225,252)(286,252){1}
wire [31:0] w11;    //: /sn:0 /dp:1 {0}(574,155)(574,178)(477,178){1}
wire w5;    //: /sn:0 {0}(460,334)(430,334)(430,314){1}
wire w9;    //: /sn:0 {0}(516,229)(516,222)(477,222){1}
//: enddecls

  //: switch g4 (w2) @(208,252) /sn:0 /w:[ 0 ] /st:0
  led g8 (.I(w5));   //: @(467,334) /sn:0 /R:3 /w:[ 0 ] /type:0
  //: switch g3 (w1) @(251,228) /sn:0 /w:[ 0 ] /st:0
  clock g2 (.Z(w0));   //: @(121,201) /sn:0 /w:[ 0 ] /omega:2000 /phi:0 /duty:50
  //: dip g1 (w13) @(169,121) /sn:0 /w:[ 0 ] /st:0
  led g10 (.I(w7));   //: @(688,241) /sn:0 /w:[ 0 ] /type:2
  //: dip g6 (w4) @(248,346) /sn:0 /w:[ 0 ] /st:0
  led g7 (.I(w6));   //: @(553,381) /sn:0 /w:[ 1 ] /type:2
  //: dip g9 (w8) @(621,325) /sn:0 /w:[ 1 ] /st:0
  //: switch g12 (w10) @(570,232) /sn:0 /R:1 /w:[ 0 ] /st:0
  //: switch g5 (w3) @(159,279) /sn:0 /w:[ 0 ] /st:0
  //: switch g11 (w9) @(516,243) /sn:0 /R:1 /w:[ 0 ] /st:0
  FormatoIJ g0 (.RegWrite(w3), .RegDst(w2), .clr(w1), .clk(w0), .Inst(w13), .ALURes(w6), .Data(w4), .PCNext(w11), .PCSrc(w10), .Jump(w9), .ALUOp(w8), .Zero(w5), .PCSortida(w7));   //: @(287, 145) /sz:(189, 168) /sn:0 /p:[ Li0>1 Li1>1 Li2>1 Li3>1 Li4>1 Bi0>0 Bi1>1 Ri0>1 Ri1>1 Ri2>1 Ri3>0 Bo0<1 Ro0<1 ]
  //: dip g13 (w11) @(574,145) /sn:0 /w:[ 0 ] /st:0

endmodule