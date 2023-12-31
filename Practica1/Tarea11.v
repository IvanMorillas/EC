//: version "1.8.7"

module PFA(Pi, Cin, B, Gi, S, A);
//: interface  /sz:(181, 159) /bd:[ Ti0>A(134/181) Ti1>B(106/181) Ti2>Cin(44/181) Bo0<S(129/181) Bo1<Pi(98/181) Bo2<Gi(49/181) ]
input B;    //: /sn:0 {0}(524,190)(573,190){1}
//: {2}(577,190)(698,190)(698,182)(708,182){3}
//: {4}(575,192)(575,273){5}
//: {6}(577,275)(688,275)(688,260)(800,260){7}
//: {8}(575,277)(575,288)(798,288){9}
output Gi;    //: /sn:0 /dp:1 {0}(819,291)(933,291){1}
input A;    //: /sn:0 {0}(526,152)(593,152){1}
//: {2}(597,152)(698,152)(698,177)(708,177){3}
//: {4}(595,154)(595,247){5}
//: {6}(597,249)(790,249)(790,255)(800,255){7}
//: {8}(595,251)(595,293)(798,293){9}
input Cin;    //: /sn:0 {0}(529,233)(770,233)(770,208)(802,208){1}
output Pi;    //: /sn:0 {0}(930,258)(821,258){1}
output S;    //: /sn:0 /dp:1 {0}(823,206)(930,206){1}
wire w2;    //: /sn:0 {0}(729,180)(792,180)(792,203)(802,203){1}
//: enddecls

  //: output g8 (Pi) @(927,258) /sn:0 /w:[ 0 ]
  xor g4 (.I0(w2), .I1(Cin), .Z(S));   //: @(813,206) /sn:0 /delay:" 4" /w:[ 1 1 0 ]
  xor g3 (.I0(A), .I1(B), .Z(w2));   //: @(719,180) /sn:0 /delay:" 4" /w:[ 3 3 0 ]
  //: input g2 (Cin) @(527,233) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(522,190) /sn:0 /w:[ 0 ]
  //: joint g10 (A) @(595, 152) /w:[ 2 -1 1 4 ]
  or g6 (.I0(A), .I1(B), .Z(Pi));   //: @(811,258) /sn:0 /delay:" 3" /w:[ 7 7 1 ]
  //: output g9 (Gi) @(930,291) /sn:0 /w:[ 1 ]
  //: output g7 (S) @(927,206) /sn:0 /w:[ 1 ]
  //: joint g12 (A) @(595, 249) /w:[ 6 5 -1 8 ]
  //: joint g11 (B) @(575, 190) /w:[ 2 -1 1 4 ]
  and g5 (.I0(B), .I1(A), .Z(Gi));   //: @(809,291) /sn:0 /delay:" 3" /w:[ 9 9 0 ]
  //: input g0 (A) @(524,152) /sn:0 /w:[ 0 ]
  //: joint g13 (B) @(575, 275) /w:[ 6 5 -1 8 ]

endmodule

module main;    //: root_module
wire w6;    //: /sn:0 {0}(817,141)(825,141)(825,279){1}
wire w4;    //: /sn:0 {0}(789,440)(789,467)(792,467){1}
wire w0;    //: /sn:0 {0}(773,172)(797,172)(797,279){1}
wire w1;    //: /sn:0 {0}(716,218)(735,218)(735,279){1}
wire w2;    //: /sn:0 /dp:1 {0}(961,542)(961,559)(820,559)(820,440){1}
wire w5;    //: /sn:0 /dp:1 {0}(740,440)(740,468)(732,468){1}
//: enddecls

  //: dip g4 (w2) @(961,532) /sn:0 /w:[ 0 ] /st:0
  //: switch g3 (w1) @(699,218) /sn:0 /w:[ 0 ] /st:0
  //: switch g2 (w0) @(756,172) /sn:0 /w:[ 0 ] /st:0
  //: switch g1 (w6) @(800,141) /sn:0 /w:[ 0 ] /st:0
  led g6 (.I(w5));   //: @(725,468) /sn:0 /R:1 /w:[ 1 ] /type:0
  led g5 (.I(w4));   //: @(799,467) /sn:0 /R:3 /w:[ 1 ] /type:0
  PFA g0 (.Cin(w1), .B(w0), .A(w6), .Gi(w5), .Pi(w4), .S(w2));   //: @(691, 280) /sz:(181, 159) /sn:0 /p:[ Ti0>1 Ti1>1 Ti2>1 Bo0<0 Bo1<0 Bo2<1 ]

endmodule
