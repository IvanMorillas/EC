//: version "1.8.7"

module Sumador_HA(C, B, A, S);
//: interface  /sz:(183, 129) /bd:[ Li0>A(35/129) Li1>B(80/129) Ro0<S(62/129) Ro1<C(89/129) ]
input B;    //: /sn:0 {0}(354,174)(393,174)(393,173)(403,173){1}
//: {2}(407,173)(424,173)(424,159)(432,159){3}
//: {4}(405,175)(405,193)(429,193){5}
input A;    //: /sn:0 {0}(353,155)(380,155)(380,154)(390,154){1}
//: {2}(394,154)(432,154){3}
//: {4}(392,156)(392,188)(429,188){5}
output C;    //: /sn:0 {0}(515,191)(450,191){1}
output S;    //: /sn:0 {0}(515,157)(453,157){1}
//: enddecls

  //: output g4 (C) @(512,191) /sn:0 /w:[ 0 ]
  //: input g3 (B) @(352,174) /sn:0 /w:[ 0 ]
  //: input g2 (A) @(351,155) /sn:0 /w:[ 0 ]
  xor g1 (.I0(A), .I1(B), .Z(S));   //: @(443,157) /sn:0 /delay:" 4" /w:[ 3 3 1 ]
  //: joint g6 (A) @(392, 154) /w:[ 2 -1 1 4 ]
  //: joint g7 (B) @(405, 173) /w:[ 2 -1 1 4 ]
  //: output g5 (S) @(512,157) /sn:0 /w:[ 0 ]
  and g0 (.I0(A), .I1(B), .Z(C));   //: @(440,191) /sn:0 /delay:" 3" /w:[ 5 5 1 ]

endmodule

module CSA(Cout, A, S, B, Cin);
//: interface  /sz:(249, 190) /bd:[ Li0>A[3:0](41/190) Li1>B[3:0](89/190) Li2>Cin(144/190) Ro0<S[3:0](61/190) Ro1<Cout(129/190) ]
supply0 w6;    //: /sn:0 {0}(725,183)(748,183)(748,221)(761,221){1}
input [3:0] B;    //: /sn:0 {0}(487,94)(647,94){1}
//: {2}(651,94)(817,94){3}
//: {4}(821,94)(838,94){5}
//: {6}(819,96)(819,185){7}
//: {8}(649,96)(649,106)(647,106)(647,186){9}
input [3:0] A;    //: /sn:0 {0}(485,62)(783,62){1}
//: {2}(787,62)(830,62){3}
//: {4}(785,64)(785,74)(784,74)(784,185){5}
input Cin;    //: /sn:0 {0}(524,360)(508,360)(508,423){1}
//: {2}(510,425)(715,425){3}
//: {4}(506,425)(458,425)(458,192)(425,192)(425,201){5}
output Cout;    //: /sn:0 /dp:1 {0}(412,224)(349,224)(349,258)(359,258){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(738,438)(738,488)(770,488){1}
wire w13;    //: /sn:0 {0}(788,251)(788,297)(681,297)(681,273)(509,273)(509,234)(441,234){1}
wire [3:0] w7;    //: /sn:0 {0}(659,252)(659,397)(728,397)(728,409){1}
wire [3:0] w4;    //: /sn:0 {0}(612,64)(612,186){1}
wire w0;    //: /sn:0 {0}(557,178)(571,178)(571,222)(589,222){1}
wire [3:0] w12;    //: /sn:0 {0}(831,251)(831,396)(748,396)(748,409){1}
wire w8;    //: /sn:0 {0}(616,252)(616,259)(532,259)(532,214)(441,214){1}
//: enddecls

  //: output g8 (Cout) @(356,258) /sn:0 /w:[ 1 ]
  //: switch g4 (w0) @(540,178) /sn:0 /w:[ 0 ] /st:0
  mux g3 (.I0(w8), .I1(w13), .S(Cin), .Z(Cout));   //: @(425,224) /sn:0 /R:3 /w:[ 1 1 5 0 ] /ss:0 /do:0
  CPA g2 (.B(B), .A(A), .Cin(w6), .Cout(w13), .S(w12));   //: @(762, 186) /sz:(91, 64) /sn:0 /p:[ Ti0>7 Ti1>5 Li0>1 Bo0<0 Bo1<0 ]
  CPA g1 (.B(B), .A(w4), .Cin(w0), .Cout(w8), .S(w7));   //: @(590, 187) /sz:(91, 64) /sn:0 /p:[ Ti0>9 Ti1>1 Li0>1 Bo0<0 Bo1<0 ]
  //: input g10 (A) @(483,62) /sn:0 /w:[ 0 ]
  //: supply0 g6 (w6) @(719,183) /sn:0 /R:3 /w:[ 0 ]
  //: output g9 (S) @(767,488) /sn:0 /w:[ 1 ]
  //: joint g7 (Cin) @(508, 425) /w:[ 2 1 4 -1 ]
  //: joint g12 (B) @(819, 94) /w:[ 4 -1 3 6 ]
  //: joint g14 (A) @(785, 62) /w:[ 2 -1 1 4 ]
  //: input g11 (B) @(485,94) /sn:0 /w:[ 0 ]
  //: input g5 (Cin) @(526,360) /sn:0 /R:2 /w:[ 0 ]
  mux g0 (.I0(w7), .I1(w12), .S(Cin), .Z(S));   //: @(738,425) /sn:0 /delay:" 2 2" /w:[ 1 1 3 0 ] /ss:0 /do:0
  //: joint g13 (B) @(649, 94) /w:[ 2 -1 1 8 ]

endmodule

module CPA(A, S, Cout, B, Cin);
//: interface  /sz:(91, 64) /bd:[ Ti0>A[3:0](22/91) Ti1>B[3:0](57/91) Li0>Cin(35/64) Bo0<S[3:0](69/91) Bo1<Cout(26/91) ]
input [3:0] B;    //: /sn:0 {0}(1157,146)(1089,146){1}
//: {2}(1088,146)(914,146){3}
//: {4}(913,146)(710,146){5}
//: {6}(709,146)(509,146){7}
//: {8}(508,146)(313,146){9}
input [3:0] A;    //: /sn:0 /dp:1 {0}(314,131)(469,131){1}
//: {2}(470,131)(696,131)(696,133){3}
//: {4}(696,134)(696,141)(879,141)(879,126)(894,126)(894,134){5}
//: {6}(894,135)(894,142)(965,142)(965,131)(1058,131){7}
//: {8}(1059,131)(1159,131){9}
input Cin;    //: /sn:0 {0}(1120,230)(1120,198)(1193,198){1}
output Cout;    //: /sn:0 /dp:1 {0}(526,329)(526,508)(1330,508){1}
output [3:0] S;    //: /sn:0 {0}(1397,420)(1268,420)(1268,453)(1258,453){1}
wire w6;    //: /sn:0 {0}(710,238)(710,150){1}
wire w13;    //: /sn:0 {0}(1106,339)(1106,360)(1006,360)(1006,213)(945,213)(945,231){1}
wire w16;    //: /sn:0 {0}(915,231)(915,158)(914,158)(914,150){1}
wire w7;    //: /sn:0 {0}(684,238)(684,134)(691,134){1}
wire w4;    //: /sn:0 {0}(479,329)(479,448)(1252,448){1}
wire w12;    //: /sn:0 {0}(1060,230)(1060,143)(1059,143)(1059,135){1}
wire w18;    //: /sn:0 {0}(930,333)(930,359)(838,359)(838,214)(756,214)(756,238){1}
wire w19;    //: /sn:0 {0}(887,333)(887,438)(1252,438){1}
wire w1;    //: /sn:0 {0}(509,237)(509,150){1}
wire w8;    //: /sn:0 {0}(739,330)(739,348)(625,348)(625,227)(543,227)(543,237){1}
wire w17;    //: /sn:0 {0}(881,231)(881,135)(889,135){1}
wire w14;    //: /sn:0 {0}(1066,339)(1066,468)(1252,468){1}
wire w2;    //: /sn:0 {0}(471,237)(471,143)(470,143)(470,135){1}
wire w11;    //: /sn:0 {0}(1091,230)(1091,158)(1089,158)(1089,150){1}
wire w9;    //: /sn:0 {0}(692,330)(692,458)(1252,458){1}
//: enddecls

  //: input g4 (A) @(312,131) /sn:0 /w:[ 0 ]
  tran g8(.Z(w2), .I(A[3]));   //: @(470,129) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  //: output g16 (S) @(1394,420) /sn:0 /w:[ 0 ]
  Sumador_FA g3 (.A(w17), .B(w16), .Cin(w13), .S(w19), .C(w18));   //: @(859, 232) /sz:(119, 100) /sn:0 /p:[ Ti0>0 Ti1>0 Ti2>1 Bo0<0 Bo1<0 ]
  //: output g17 (Cout) @(1327,508) /sn:0 /w:[ 1 ]
  Sumador_FA g2 (.A(w12), .B(w11), .Cin(Cin), .S(w14), .C(w13));   //: @(1040, 231) /sz:(110, 107) /sn:0 /p:[ Ti0>0 Ti1>0 Ti2>0 Bo0<0 Bo1<0 ]
  Sumador_FA g1 (.A(w7), .B(w6), .Cin(w18), .S(w9), .C(w8));   //: @(660, 239) /sz:(132, 90) /sn:0 /p:[ Ti0>0 Ti1>0 Ti2>1 Bo0<0 Bo1<0 ]
  tran g10(.Z(w11), .I(B[0]));   //: @(1089,144) /sn:0 /R:1 /w:[ 1 2 1 ] /ss:1
  tran g6(.Z(w17), .I(A[1]));   //: @(892,135) /sn:0 /R:2 /w:[ 1 6 5 ] /ss:0
  tran g7(.Z(w7), .I(A[2]));   //: @(694,134) /sn:0 /R:2 /w:[ 1 4 3 ] /ss:0
  //: input g9 (B) @(311,146) /sn:0 /w:[ 9 ]
  tran g12(.Z(w6), .I(B[2]));   //: @(710,144) /sn:0 /R:1 /w:[ 1 6 5 ] /ss:1
  tran g5(.Z(w12), .I(A[0]));   //: @(1059,129) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  tran g11(.Z(w16), .I(B[1]));   //: @(914,144) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  //: input g14 (Cin) @(1195,198) /sn:0 /R:2 /w:[ 1 ]
  concat g15 (.I0(w14), .I1(w9), .I2(w4), .I3(w19), .Z(S));   //: @(1257,453) /sn:0 /w:[ 1 1 1 1 1 ] /dr:0
  Sumador_FA g0 (.A(w2), .B(w1), .Cin(w8), .S(w4), .C(Cout));   //: @(447, 238) /sz:(133, 90) /sn:0 /p:[ Ti0>0 Ti1>0 Ti2>1 Bo0<0 Bo1<0 ]
  tran g13(.Z(w1), .I(B[3]));   //: @(509,144) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1

endmodule

module Sumador_FA(B, A, C, S, Cin);
//: interface  /sz:(90, 70) /bd:[ Li0>A(13/70) Li1>B(33/70) Li2>Cin(51/70) Ro0<S(17/70) Ro1<C(42/70) ]
input B;    //: /sn:0 {0}(67,222)(120,222)(120,219)(130,219){1}
input A;    //: /sn:0 /dp:1 {0}(69,193)(120,193)(120,194)(130,194){1}
input Cin;    //: /sn:0 {0}(71,286)(327,286)(327,261)(337,261){1}
output C;    //: /sn:0 {0}(574,310)(544,310)(544,309)(514,309){1}
output S;    //: /sn:0 /dp:1 {0}(443,251)(584,251)(584,253)(594,253){1}
wire w7;    //: /sn:0 {0}(443,266)(483,266)(483,306)(493,306){1}
wire w2;    //: /sn:0 {0}(213,209)(273,209)(273,236)(337,236){1}
wire w9;    //: /sn:0 /dp:1 {0}(493,311)(264,311)(264,224)(213,224){1}
//: enddecls

  //: input g4 (B) @(65,222) /sn:0 /w:[ 0 ]
  //: input g3 (A) @(67,193) /sn:0 /w:[ 0 ]
  or g2 (.I0(w7), .I1(w9), .Z(C));   //: @(504,309) /sn:0 /delay:" 3" /w:[ 1 0 1 ]
  Sumador_HA g1 (.B(Cin), .A(w2), .C(w7), .S(S));   //: @(338, 218) /sz:(104, 70) /sn:0 /p:[ Li0>1 Li1>1 Ro0<0 Ro1<0 ]
  //: output g6 (C) @(571,310) /sn:0 /w:[ 0 ]
  //: output g7 (S) @(591,253) /sn:0 /w:[ 1 ]
  //: input g5 (Cin) @(69,286) /sn:0 /w:[ 0 ]
  Sumador_HA g0 (.B(B), .A(A), .C(w9), .S(w2));   //: @(131, 176) /sz:(81, 70) /sn:0 /p:[ Li0>1 Li1>1 Ro0<1 Ro1<0 ]

endmodule

module main;    //: root_module
wire w4;    //: /sn:0 {0}(513,287)(596,287){1}
wire [3:0] w3;    //: /sn:0 {0}(491,156)(491,184)(596,184){1}
wire [3:0] w0;    //: /sn:0 /dp:1 {0}(469,217)(469,232)(596,232){1}
wire w1;    //: /sn:0 {0}(881,255)(881,272)(847,272){1}
wire [3:0] w5;    //: /sn:0 {0}(887,169)(887,204)(847,204){1}
//: enddecls

  led g4 (.I(w1));   //: @(881,248) /sn:0 /w:[ 0 ] /type:0
  //: dip g3 (w3) @(491,146) /sn:0 /w:[ 0 ] /st:0
  //: dip g2 (w0) @(469,207) /sn:0 /w:[ 0 ] /st:0
  led g1 (.I(w5));   //: @(887,162) /sn:0 /w:[ 0 ] /type:3
  //: switch g5 (w4) @(496,287) /sn:0 /w:[ 0 ] /st:0
  CSA g0 (.Cin(w4), .B(w0), .A(w3), .Cout(w1), .S(w5));   //: @(597, 143) /sz:(249, 190) /sn:0 /p:[ Li0>1 Li1>1 Li2>1 Ro0<1 Ro1<1 ]

endmodule