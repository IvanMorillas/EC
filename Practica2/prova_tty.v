//: version "1.8.7"

module main;    //: root_module
supply0 w5;    //: /sn:0 {0}(462,299)(462,290)(447,290){1}
wire w6;    //: /sn:0 {0}(221,388)(239,388)(239,262)(191,262){1}
wire w7;    //: /sn:0 /dp:1 {0}(208,352)(208,362)(193,362)(193,270)(191,270){1}
wire w4;    //: /sn:0 {0}(452,246)(462,246)(462,280)(447,280){1}
wire w3;    //: /sn:0 {0}(336,246)(369,246)(369,285)(371,285){1}
wire [7:0] w1;    //: /sn:0 /dp:1 {0}(191,237)(257,237)(257,402)(309,402)(309,393){1}
wire [7:0] w8;    //: /sn:0 {0}(408,296)(408,336)(497,336)(497,300){1}
wire [7:0] Dada;    //: /sn:0 /dp:2 {0}(191,229)(280,229)(280,229)(301,229){1}
//: {2}(305,229)(408,229)(408,275){3}
//: {4}(303,227)(303,182){5}
wire enviar;    //: /sn:0 {0}(242,163)(252,163)(252,254)(191,254){1}
wire rebre;    //: /sn:0 {0}(315,283)(315,299)(281,299)(281,248){1}
//: {2}(283,246)(320,246){3}
//: {4}(279,246)(191,246){5}
//: enddecls

  led g4 (.I(Dada));   //: @(303,175) /sn:0 /w:[ 5 ] /type:2
  //: switch g8 (w4) @(435,246) /sn:0 /w:[ 0 ] /st:1
  //: dip g3 (w1) @(309,383) /sn:0 /w:[ 1 ] /st:97
  //: comment g16 /dolink:0 /link:"" @(35,13) /sn:0
  //: /line:"Per rebre:"
  //: /line:"Desactivar CTS a '0' i esperar que RTS posi un '1'"
  //: /line:"Si el terminal no te dades a enviar RTS no passa maia a '1' segueix a '0'"
  //: /line:"Si el terminal té dades posa RTS a '1' i TD amb la dada."
  //: /line:"Per indicar que ja s'ha llegit la dada cal fer un flanc a CTS, de '0' a '1'"
  //: /line:"Llavors el terminal mostrarà el següent caràcter del buffer (si hi ha)"
  //: /line:""
  //: /line:"En l'exemple d'aqui, cal afegir un retard al RTS per utilitzar-lo "
  //: /line:"com a clock d'un registre. Com a mínim de 10 (amb 4 no va)"
  //: /line:""
  //: /end
  led g2 (.I(w7));   //: @(208,345) /sn:0 /w:[ 0 ] /type:0
  //: switch g1 (w6) @(204,388) /sn:0 /w:[ 0 ] /st:0
  //: switch g10 (enviar) @(225,163) /sn:0 /w:[ 0 ] /st:1
  register g6 (.Q(w8), .D(Dada), .EN(w5), .CLR(w4), .CK(w3));   //: @(408,285) /sn:0 /w:[ 0 3 1 1 1 ]
  //: joint g7 (Dada) @(303, 229) /w:[ 2 4 1 -1 ]
  //: supply0 g9 (w5) @(462,305) /sn:0 /w:[ 0 ]
  buf g12 (.I(rebre), .Z(w3));   //: @(326,246) /sn:0 /delay:" 10" /w:[ 3 0 ]
  led g5 (.I(w8));   //: @(497,293) /sn:0 /w:[ 1 ] /type:2
  led g11 (.I(rebre));   //: @(315,276) /sn:0 /w:[ 0 ] /type:0
  //: comment g14 /dolink:0 /link:"" @(74,524) /sn:0
  //: /line:"Al MIPS no hi ha instruccions d'E/S especials per al ports."
  //: /line:"Cal mapejar en @ de memoria els ports d'E/S "
  //: /line:"I mitjançant un ChipSelect llegir o escriure d'ells."
  //: /end
  tty g0 (.TD(Dada), .RD(w1), .RTS(rebre), .CTS(enviar), .DSR(w6), .DTR(w7));   //: @(154,251) /sn:0 /w:[ 0 0 5 1 1 1 ]
  //: comment g15 /dolink:0 /link:"" @(74,441) /sn:0
  //: /line:"Per enviar no cal mirar el senyal, "
  //: /line:"només assegurar-se que al RD "
  //: /line:"hi ha el caràcter ASCII que es vol enviar "
  //: /line:"abans d'activar el DSR de '0' a '1' "
  //: /line:"(DTR avisa que esta preparat, "
  //: /line:"(pero en simulacio sempre ho esta)"
  //: /end
  //: joint g13 (rebre) @(281, 246) /w:[ 2 -1 4 1 ]

endmodule
