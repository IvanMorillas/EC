//: version "1.8.7"

module sumador_HA2(S, C, Cin, B, A);
//: interface  /sz:(172, 140) /bd:[ Li0>A(29/140) Li1>B(68/140) Li2>Cin(106/140) Ro0<S(44/140) Ro1<C(82/140) ]
input B;    //: /sn:0 {0}(364,208)(364,258){1}
//: {2}(366,260)(454,260)(454,256)(613,256){3}
//: {4}(364,262)(364,391){5}
//: {6}(366,393)(543,393){7}
//: {8}(364,395)(364,415)(543,415){9}
input A;    //: /sn:0 {0}(544,361)(325,361){1}
//: {2}(323,359)(323,253){3}
//: {4}(325,251)(613,251){5}
//: {6}(323,249)(323,209){7}
//: {8}(323,363)(323,379)(335,379)(335,388)(543,388){9}
input Cin;    //: /sn:0 /dp:3 {0}(398,210)(398,270){1}
//: {2}(400,272)(498,272)(498,267)(732,267){3}
//: {4}(398,274)(398,363){5}
//: {6}(400,365)(410,365)(410,366)(544,366){7}
//: {8}(398,367)(398,420)(543,420){9}
output C;    //: /sn:0 {0}(1031,318)(811,318)(811,317)(810,317){1}
output S;    //: /sn:0 /dp:1 {0}(753,265)(1025,265)(1025,251)(1035,251){1}
wire w16;    //: /sn:0 /dp:1 {0}(692,322)(654,322)(654,391)(564,391){1}
wire w8;    //: /sn:0 {0}(564,418)(779,418)(779,319)(789,319){1}
wire w11;    //: /sn:0 {0}(634,254)(722,254)(722,262)(732,262){1}
wire w15;    //: /sn:0 /dp:1 {0}(692,317)(626,317)(626,364)(565,364){1}
wire w5;    //: /sn:0 /dp:1 {0}(789,314)(735,314)(735,320)(713,320){1}
//: enddecls

  xor g8 (.I0(A), .I1(B), .Z(w11));   //: @(624,254) /sn:0 /delay:" 4" /w:[ 5 3 0 ]
  //: output g4 (S) @(1032,251) /sn:0 /w:[ 1 ]
  //: joint g16 (Cin) @(398, 365) /w:[ 6 5 -1 8 ]
  //: output g3 (C) @(1028,318) /sn:0 /w:[ 0 ]
  //: input g2 (Cin) @(398,208) /sn:0 /R:3 /w:[ 0 ]
  //: input g1 (B) @(364,206) /sn:0 /R:3 /w:[ 0 ]
  //: joint g18 (B) @(364, 393) /w:[ 6 5 -1 8 ]
  or g10 (.I0(w15), .I1(w16), .Z(w5));   //: @(703,320) /sn:0 /delay:" 3" /w:[ 0 0 1 ]
  and g6 (.I0(A), .I1(B), .Z(w16));   //: @(554,391) /sn:0 /delay:" 3" /w:[ 9 7 1 ]
  xor g9 (.I0(w11), .I1(Cin), .Z(S));   //: @(743,265) /sn:0 /delay:" 4" /w:[ 1 3 0 ]
  and g7 (.I0(B), .I1(Cin), .Z(w8));   //: @(554,418) /sn:0 /delay:" 3" /w:[ 9 9 0 ]
  //: joint g12 (A) @(323, 251) /w:[ 4 6 -1 3 ]
  //: joint g14 (Cin) @(398, 272) /w:[ 2 1 -1 4 ]
  or g11 (.I0(w5), .I1(w8), .Z(C));   //: @(800,317) /sn:0 /delay:" 3" /w:[ 0 1 1 ]
  and g5 (.I0(A), .I1(Cin), .Z(w15));   //: @(555,364) /sn:0 /delay:" 3" /w:[ 0 7 1 ]
  //: joint g15 (A) @(323, 361) /w:[ 1 2 -1 8 ]
  //: input g0 (A) @(323,207) /sn:0 /R:3 /w:[ 7 ]
  //: joint g13 (B) @(364, 260) /w:[ 2 1 -1 4 ]

endmodule

module main;    //: root_module
wire w3;    //: /sn:0 {0}(739,228)(634,228){1}
wire w0;    //: /sn:0 {0}(383,203)(458,203)(458,214)(460,214){1}
wire w1;    //: /sn:0 {0}(381,242)(455,242)(455,252)(460,252){1}
wire w2;    //: /sn:0 {0}(741,190)(634,190){1}
wire w5;    //: /sn:0 {0}(385,168)(458,168)(458,175)(460,175){1}
//: enddecls

  led g4 (.I(w2));   //: @(748,190) /sn:0 /R:3 /w:[ 0 ] /type:0
  //: switch g3 (w1) @(364,242) /sn:0 /w:[ 0 ] /st:0
  //: switch g2 (w0) @(366,203) /sn:0 /w:[ 0 ] /st:0
  //: switch g1 (w5) @(368,168) /sn:0 /w:[ 0 ] /st:0
  led g5 (.I(w3));   //: @(746,228) /sn:0 /R:3 /w:[ 0 ] /type:0
  sumador_HA2 g0 (.Cin(w1), .B(w0), .A(w5), .C(w3), .S(w2));   //: @(461, 146) /sz:(172, 140) /sn:0 /p:[ Li0>1 Li1>1 Li2>1 Ro0<1 Ro1<1 ]

endmodule
