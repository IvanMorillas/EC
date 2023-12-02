//: version "1.8.7"

module fetch(reset, clk, Inst);
//: interface  /sz:(40, 40) /bd:[ ]
supply0 w3;    //: /sn:0 {0}(771,307)(771,359){1}
supply0 w0;    //: /sn:0 {0}(889,442)(889,422){1}
output [31:0] Inst;    //: /sn:0 /dp:1 {0}(906,395)(968,395){1}
input clk;    //: /sn:0 {0}(688,446)(766,446)(766,435){1}
supply0 w2;    //: /sn:0 /dp:1 {0}(923,251)(923,270){1}
input reset;    //: /sn:0 {0}(688,345)(761,345)(761,359){1}
wire [31:0] w4;    //: /sn:0 {0}(861,267)(861,310)(909,310){1}
wire [31:0] PCNext;    //: /sn:0 /dp:1 {0}(938,294)(948,294)(948,197)(646,197)(646,397)(755,397){1}
wire [31:0] w11;    //: /sn:0 /dp:1 {0}(776,397)(812,397){1}
//: {2}(816,397)(871,397){3}
//: {4}(814,395)(814,278)(909,278){5}
wire w5;    //: /sn:0 {0}(923,332)(923,318){1}
//: enddecls

  //: supply0 g8 (w3) @(771,301) /sn:0 /R:2 /w:[ 0 ]
  //: input g4 (reset) @(686,345) /sn:0 /w:[ 0 ]
  //: input g3 (clk) @(686,446) /sn:0 /w:[ 0 ]
  rom g2 (.A(w11), .D(Inst), .OE(w0));   //: @(889,396) /sn:0 /w:[ 3 0 1 ] /mem:"/home/milax/EC/Practica2/mult.mem"
  register g1 (.Q(w11), .D(PCNext), .EN(w3), .CLR(reset), .CK(clk));   //: @(766,397) /sn:0 /R:1 /w:[ 0 1 1 1 1 ]
  //: supply0 g10 (w0) @(889,448) /sn:0 /w:[ 0 ]
  //: output g6 (Inst) @(965,395) /sn:0 /w:[ 1 ]
  //: supply0 g7 (w2) @(923,245) /sn:0 /R:2 /w:[ 0 ]
  //: joint g5 (w11) @(814, 397) /w:[ 2 4 1 -1 ]
  add g0 (.A(w4), .B(w11), .S(PCNext), .CI(w2), .CO(w5));   //: @(925,294) /sn:0 /R:1 /w:[ 1 5 0 1 1 ]
  //: dip g13 (w4) @(861,257) /sn:0 /w:[ 0 ] /st:1

endmodule

module main;    //: root_module
wire w7;    //: /sn:0 {0}(616,357)(682,357){1}
wire w2;    //: /sn:0 {0}(602,291)(682,291){1}
wire [31:0] w5;    //: /sn:0 {0}(1024,259)(1024,322)(837,322){1}
//: enddecls

  clock g8 (.Z(w2));   //: @(589,291) /sn:0 /w:[ 0 ] /omega:2000 /phi:0 /duty:50
  fetch g6 (.clk(w2), .reset(w7), .Inst(w5));   //: @(683, 241) /sz:(153, 149) /sn:0 /p:[ Li0>1 Li1>1 Ro0<1 ]
  led g9 (.I(w5));   //: @(1024,252) /sn:0 /w:[ 0 ] /type:2
  //: switch g7 (w7) @(599,357) /sn:0 /w:[ 0 ] /st:0

endmodule