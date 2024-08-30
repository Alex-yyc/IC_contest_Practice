wvResizeWindow -win $_nWave1 8 147 893 865
wvResizeWindow -win $_nWave1 0 139 1920 1017
wvResizeWindow -win $_nWave1 2675 221 893 865
wvResizeWindow -win $_nWave1 2881 31 958 1128
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/YanYouChen/2024icsontestpratice/112_LaserTreatment/build/LASER.fsdb}
wvResizeWindow -win $_nWave1 418 217 893 865
wvResizeWindow -win $_nWave1 961 147 958 1008
wvSetCursor -win $_nWave1 3701022.772881
wvResizeWindow -win $_nWave1 759 147 1160 1008
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/READ_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/C1X\[3:0\]" \
           "/testfixture/u_LASER/C1Y\[3:0\]" "/testfixture/u_LASER/C2X\[3:0\]" \
           "/testfixture/u_LASER/C2Y\[3:0\]" "/testfixture/u_LASER/CLK" \
           "/testfixture/u_LASER/RST"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetCursor -win $_nWave1 4283717.863189 -snap {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 491 147 1428 1008
wvResizeWindow -win $_nWave1 491 147 1428 1008
wvResizeWindow -win $_nWave1 491 147 1428 1008
wvResizeWindow -win $_nWave1 491 147 1428 1008
wvResizeWindow -win $_nWave1 491 147 1428 1008
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 759.356044 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 406.523943 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 2116.992609 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G1}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectGroup -win $_nWave1 {G3}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvRenameGroup -win $_nWave1 {G2} {final output}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/X\[3:0\]" \
           "/testfixture/u_LASER/Y\[3:0\]"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
{/testfixture/u_LASER/square\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
{/testfixture/u_LASER/square\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2116.992609 -snap {("G3" 0)}
wvResizeWindow -win $_nWave1 491 147 1428 1008
wvSetCursor -win $_nWave1 3082.972799 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectGroup -win $_nWave1 {final output} {G3}
wvSelectGroup -win $_nWave1 {final output}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/pointx\[39:0\]" \
           "/testfixture/u_LASER/pointy\[39:0\]"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 3313.045396 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 3428.081695 -snap {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectGroup -win $_nWave1 {G3}
wvRenameGroup -win $_nWave1 {G3} {record}
wvSetPosition -win $_nWave1 {("record" 0)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetCursor -win $_nWave1 2362.078662 -snap {("G4" 0)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "record" 1 )} 
wvSetPosition -win $_nWave1 {("record" 1)}
wvExpandBus -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 2806.885683 -snap {("record" 41)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "record" 1 )} 
wvSetPosition -win $_nWave1 {("record" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("record" 1)}
wvResizeWindow -win $_nWave1 491 147 1428 1008
wvSetCursor -win $_nWave1 2072.590445 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 2456.403491 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2870.921580 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2870.921580 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 4076.094543 -snap {("record" 1)}
wvSetCursor -win $_nWave1 2295.202012 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 3531.080018 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 4444.555066 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 5212.181157 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("record" 2)}
wvSetPosition -win $_nWave1 {("record" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/pointy\[39:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "record" 2 )} 
wvSetPosition -win $_nWave1 {("record" 2)}
wvSetPosition -win $_nWave1 {("record" 2)}
wvSetPosition -win $_nWave1 {("record" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/pointy\[39:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "record" 2 )} 
wvSetPosition -win $_nWave1 {("record" 2)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("record" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("record" 3)}
wvSetCursor -win $_nWave1 2195.410620 -snap {("G4" 0)}
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 120077965.404370 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 34390.755867 -snap {("record" 3)}
wvSetCursor -win $_nWave1 33312.675745 -snap {("record" 3)}
wvSetCursor -win $_nWave1 34282.947854 -snap {("record" 1)}
wvSelectSignal -win $_nWave1 {( "record" 1 )} 
wvSelectSignal -win $_nWave1 {( "record" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "record" 1 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 18974.210133 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 79023.272885 -snap {("record" 2)}
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("record" 2)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/cur_state\[1:0\]" \
           "/testfixture/u_LASER/next_state\[1:0\]"
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 64361.383236 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 68350.279685 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 1509.312170 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 32989.251709 -snap {("record" 3)}
wvSetCursor -win $_nWave1 34067.331830 -snap {("record" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvResizeWindow -win $_nWave1 459 147 1460 1008
wvResizeWindow -win $_nWave1 459 147 1460 1008
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
{/testfixture/u_LASER/c1_cover_done} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
{/testfixture/u_LASER/c1_cover_done} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("record" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("record" 3)}
wvSetPosition -win $_nWave1 {("record" 4)}
wvSetCursor -win $_nWave1 68131.948375 -snap {("record" 4)}
wvSetCursor -win $_nWave1 69209.985533 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 68455.359522 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 68239.752090 -snap {("record" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("record" 5)}
wvSetPosition -win $_nWave1 {("record" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/c1_cover_done} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "record" 5 )} 
wvSetPosition -win $_nWave1 {("record" 5)}
wvSetPosition -win $_nWave1 {("record" 5)}
wvSetPosition -win $_nWave1 {("record" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/c1_cover_done} \
{/testfixture/u_LASER/count\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "record" 5 )} 
wvSetPosition -win $_nWave1 {("record" 5)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 39240.552545 -snap {("record" 4)}
wvSetCursor -win $_nWave1 33203.544461 -snap {("record" 5)}
wvSetCursor -win $_nWave1 34497.189050 -snap {("record" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 33473.053751 -snap {("record" 3)}
wvSetCursor -win $_nWave1 33985.121401 -snap {("record" 3)}
wvSelectSignal -win $_nWave1 {( "record" 5 )} 
wvSelectSignal -win $_nWave1 {( "record" 5 )} 
wvSetRadix -win $_nWave1 -format Oct
wvSetCursor -win $_nWave1 34092.925116 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33176.593532 -snap {("record" 5)}
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvSetCursor -win $_nWave1 33203.544461 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33769.513969 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33068.789816 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33769.513969 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33122.691674 -snap {("record" 5)}
wvSetCursor -win $_nWave1 34039.023258 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33176.593532 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33742.563040 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33230.495390 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33688.661182 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33176.593532 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33634.759324 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33122.691674 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33392.200964 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33095.740745 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33473.053751 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33958.170472 -snap {("record" 1)}
wvSetCursor -win $_nWave1 33095.740745 -snap {("record" 4)}
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvResizeWindow -win $_nWave1 418 217 893 865
wvResizeWindow -win $_nWave1 0 139 1920 1017
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvSetCursor -win $_nWave1 7245.557905 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 32470.833573 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33088.047765 -snap {("record" 5)}
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvSelectSignal -win $_nWave1 {( "record" 5 )} 
wvSetPosition -win $_nWave1 {("record" 4)}
wvSetPosition -win $_nWave1 {("record" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("record" 3)}
wvSetPosition -win $_nWave1 {("record" 4)}
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "record" 1 )} 
wvSelectSignal -win $_nWave1 {( "record" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "record" 1 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 29568.585101 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 33298.705652 -snap {("record" 3)}
wvSetCursor -win $_nWave1 33889.084445 -snap {("record" 4)}
wvSetCursor -win $_nWave1 33915.919844 -snap {("record" 4)}
wvSetCursor -win $_nWave1 34211.109240 -snap {("record" 4)}
wvSetCursor -win $_nWave1 33271.870253 -snap {("record" 3)}
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSetCursor -win $_nWave1 33973.615954 -snap {("record" 4)}
wvSetCursor -win $_nWave1 33222.224763 -snap {("record" 4)}
wvSetCursor -win $_nWave1 34054.122152 -snap {("record" 4)}
wvSetCursor -win $_nWave1 33141.718564 -snap {("record" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetCursor -win $_nWave1 105114.260419 -snap {("record" 4)}
wvSetCursor -win $_nWave1 33168.553964 -snap {("record" 3)}
wvSetCursor -win $_nWave1 12961.498030 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 34845.766442 -snap {("record" 4)}
wvSetCursor -win $_nWave1 34067.539852 -snap {("record" 4)}
wvSetCursor -win $_nWave1 49819.919445 -snap {("record" 4)}
wvSetCursor -win $_nWave1 32591.592872 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 49310.046851 -snap {("record" 5)}
wvSetCursor -win $_nWave1 49846.754844 -snap {("record" 5)}
wvSetCursor -win $_nWave1 33933.362854 -snap {("record" 4)}
wvSetCursor -win $_nWave1 34577.412445 -snap {("record" 4)}
wvSetCursor -win $_nWave1 35462.980633 -snap {("record" 4)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 42936.639436 -snap {("record" 4)}
wvSetCursor -win $_nWave1 43634.359827 -snap {("record" 4)}
wvSetCursor -win $_nWave1 45083.471408 -snap {("record" 4)}
wvSetCursor -win $_nWave1 47122.961781 -snap {("record" 4)}
wvSetCursor -win $_nWave1 49162.452154 -snap {("record" 5)}
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSearchNext -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("record" 5)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("record" 5)}
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/DONE"
wvSetPosition -win $_nWave1 {("record" 5)}
wvSetPosition -win $_nWave1 {("record" 6)}
wvSetPosition -win $_nWave1 {("record" 6)}
wvSetPosition -win $_nWave1 {("record" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/c1_cover_done} \
{/testfixture/u_LASER/DONE} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("record" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "record" 6 )} 
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "record" 5 )} 
wvSetCursor -win $_nWave1 21553753.419407 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 21553270.382213 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 21553914.431805 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 21554397.468998 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 21554826.835393 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSelectSignal -win $_nWave1 {( "final output" 3 )} 
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "record" 6 )} 
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSelectSignal -win $_nWave1 {( "final output" 3 )} 
wvSelectSignal -win $_nWave1 {( "final output" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("record" 5)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/point_covered\[5:0\]" \
           "/testfixture/u_LASER/record_max_covered\[5:0\]"
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/c1_cover_done} \
{/testfixture/u_LASER/DONE} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_LASER/point_covered\[5:0\]} \
{/testfixture/u_LASER/record_max_covered\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 34241.969950 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 35852.093929 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 40253.099471 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 49699.160147 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 68376.598301 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 75675.827005 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 82867.714111 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 91455.041998 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 58823.196027 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 54851.556879 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 50987.259330 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 48411.060964 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 50665.234534 -snap {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 2 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("record" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("record" 6)}
wvSetPosition -win $_nWave1 {("record" 8)}
wvSelectSignal -win $_nWave1 {( "record" 6 )} 
wvSelectGroup -win $_nWave1 {G6}
wvSelectSignal -win $_nWave1 {( "record" 7 )} 
wvSelectSignal -win $_nWave1 {( "record" 7 8 )} 
wvSelectSignal -win $_nWave1 {( "record" 7 )} 
wvSelectSignal -win $_nWave1 {( "record" 7 8 )} 
wvSetPosition -win $_nWave1 {("record" 7)}
wvSetPosition -win $_nWave1 {("record" 8)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSelectGroup -win $_nWave1 {G5}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("record" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("record" 6)}
wvSelectGroup -win $_nWave1 {G6}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectGroup -win $_nWave1 {G6}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectGroup -win $_nWave1 {final output}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSelectGroup -win $_nWave1 {G6}
wvSetCursor -win $_nWave1 57964.463238 -snap {("G6" 0)}
wvSetCursor -win $_nWave1 67195.840717 -snap {("final output" 1)}
wvSetCursor -win $_nWave1 84907.204484 -snap {("final output" 1)}
wvSetCursor -win $_nWave1 100257.053082 -snap {("final output" 1)}
wvResizeWindow -win $_nWave1 0 139 1920 1017
wvResizeWindow -win $_nWave1 0 139 1920 1017
wvResizeWindow -win $_nWave1 0 139 1920 1017
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 1 2 3 4 )} 
wvSelectSignal -win $_nWave1 {( "final output" 1 2 3 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 1663476.258153 -snap {("final output" 2)}
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("final output" 6)}
wvSetPosition -win $_nWave1 {("final output" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/c1_cover_done} \
{/testfixture/u_LASER/DONE} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_LASER/point_covered\[5:0\]} \
{/testfixture/u_LASER/record_max_covered\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
{/testfixture/u_LASER/adjust_c1} \
{/testfixture/u_LASER/adjust_c2} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "final output" 5 6 )} 
wvSetPosition -win $_nWave1 {("final output" 6)}
wvSetPosition -win $_nWave1 {("final output" 6)}
wvSetPosition -win $_nWave1 {("final output" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/c1_cover_done} \
{/testfixture/u_LASER/DONE} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_LASER/point_covered\[5:0\]} \
{/testfixture/u_LASER/record_max_covered\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
{/testfixture/u_LASER/adjust_c1} \
{/testfixture/u_LASER/adjust_c2} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "final output" 5 6 )} 
wvSetPosition -win $_nWave1 {("final output" 6)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("final output" 5)}
wvSetPosition -win $_nWave1 {("final output" 6)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSelectGroup -win $_nWave1 {G6}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSelectGroup -win $_nWave1 {G6}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_LASER"
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("record" 6)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/x\[3:0\]" \
           "/testfixture/u_LASER/y\[3:0\]"
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/c1_cover_done} \
{/testfixture/u_LASER/DONE} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_LASER/point_covered\[5:0\]} \
{/testfixture/u_LASER/record_max_covered\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_LASER/x\[3:0\]} \
{/testfixture/u_LASER/y\[3:0\]} \
{/testfixture/u_LASER/adjust_c1} \
{/testfixture/u_LASER/adjust_c2} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4260230.816466 -snap {("G6" 3)}
wvSetCursor -win $_nWave1 4988592.859281 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 8438005.552613 -snap {("G6" 2)}
wvSetCursor -win $_nWave1 8657888.433463 -snap {("G6" 2)}
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvSelectSignal -win $_nWave1 {( "record" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSetCursor -win $_nWave1 64662922.415927 -snap {("G6" 3)}
wvSetCursor -win $_nWave1 64644963.760973 -snap {("G6" 3)}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 128599.766435 -snap {("final output" 2)}
wvSetCursor -win $_nWave1 1205.557856 -snap {("G6" 3)}
wvSetCursor -win $_nWave1 33838.761881 -snap {("record" 2)}
wvSelectSignal -win $_nWave1 {( "record" 1 )} 
wvSetPosition -win $_nWave1 {("record" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 33714.048999 -snap {("record" 42)}
wvSetCursor -win $_nWave1 33589.336118 -snap {("record" 41)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "record" 2 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "record" 1 )} 
wvSelectSignal -win $_nWave1 {( "record" 2 )} 
wvSelectSignal -win $_nWave1 {( "record" 1 )} 
wvSetPosition -win $_nWave1 {("record" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("record" 1)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetCursor -win $_nWave1 33963.474762 -snap {("record" 3)}
wvSetCursor -win $_nWave1 33921.903802 -snap {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSetCursor -win $_nWave1 49047.497795 -snap {("record" 5)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 49920.487966 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 34622.374487 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 35412.222737 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 36285.212909 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 18083.367836 -snap {("G7" 0)}
wvSetCursor -win $_nWave1 14134.126584 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 49053.733439 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "record" 5 )} 
wvSetCursor -win $_nWave1 33048.913630 -snap {("record" 3)}
wvSetCursor -win $_nWave1 34171.329565 -snap {("record" 2)}
wvSetCursor -win $_nWave1 49220.017281 -snap {("record" 4)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 64684.414602 -snap {("record" 3)}
wvSetCursor -win $_nWave1 64601.272681 -snap {("record" 4)}
wvSetCursor -win $_nWave1 66347.253024 -snap {("record" 4)}
wvSetCursor -win $_nWave1 67344.956077 -snap {("record" 4)}
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/change_times\[2:0\]"
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSelectGroup -win $_nWave1 {G7}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("final output" 3)}
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("final output" 1)}
wvSetPosition -win $_nWave1 {("final output" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 4)}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/c1_cover_done} \
{/testfixture/u_LASER/DONE} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_LASER/point_covered\[5:0\]} \
{/testfixture/u_LASER/record_max_covered\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_LASER/x\[3:0\]} \
{/testfixture/u_LASER/y\[3:0\]} \
{/testfixture/u_LASER/adjust_c1} \
{/testfixture/u_LASER/adjust_c2} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/testfixture/u_LASER/change_times\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSelectGroup -win $_nWave1 {G6}
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4334188.346019 -snap {("G6" 2)}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 21245972.316383 -snap {("G5" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 21530650.254169 -snap {("G7" 1)}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "record" 6 )} 
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetCursor -win $_nWave1 25503061.626218 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25520355.145803 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25531662.447070 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25539976.639179 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25543634.883706 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25547293.128234 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25551283.940446 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25553611.914236 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25559598.132554 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25563588.944766 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25567247.189294 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25569907.730768 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25574896.246033 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25577224.219823 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 25583210.438141 -snap {("G5" 1)}
wvZoom -win $_nWave1 25586868.682669 25590526.927197
wvSetCursor -win $_nWave1 25588450.951689 -snap {("G5" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "record" 6 )} 
wvSetCursor -win $_nWave1 25866753.288921 -snap {("record" 6)}
wvSetCursor -win $_nWave1 25851956.544761 -snap {("record" 6)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 25842400.314153 -snap {("G5" 2)}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSetCursor -win $_nWave1 23635188.483866 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 23672180.344264 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 23688826.681443 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 23692525.867483 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 23718420.169761 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 23576618.038236 -snap {("G4" 0)}
wvZoom -win $_nWave1 23833711.468001 23846042.088134
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("final output" 2)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/square\[0:15\]"
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G8" 1)}
wvSetPosition -win $_nWave1 {("G8" 1)}
wvSetCursor -win $_nWave1 23834718.049235 -snap {("G9" 0)}
wvSelectSignal -win $_nWave1 {( "G8" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G8" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetCursor -win $_nWave1 23838793.079720 -snap {("record" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetCursor -win $_nWave1 23839763.131797 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 23838724.080200 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 23839178.665274 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 23839373.487448 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 23838659.139475 -snap {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetCursor -win $_nWave1 23838172.084038 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetCursor -win $_nWave1 6207162.672551 -snap {("G9" 0)}
wvSetCursor -win $_nWave1 6300498.729357 -snap {("G5" 2)}
wvSetCursor -win $_nWave1 6317253.436371 -snap {("G5" 2)}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 6635448.287337 -snap {("G9" 0)}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetCursor -win $_nWave1 6938380.533633 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 6938120.770734 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 6938380.533633 -snap {("G5" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 6669714.260810 -snap {("G5" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSetCursor -win $_nWave1 6668367.552529 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6669146.841227 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6670137.187281 -snap {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectGroup -win $_nWave1 {final output}
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSelectSignal -win $_nWave1 {( "final output" 3 )} 
wvSelectSignal -win $_nWave1 {( "final output" 4 )} 
wvSetCursor -win $_nWave1 6659697.965760 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 6653081.317655 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 6652594.262219 -snap {("final output" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvSetPosition -win $_nWave1 {("final output" 4)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 "/testfixture/u_LASER/seecover\[2:0\]"
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_LASER/CLK} \
{/testfixture/u_LASER/RST} \
{/testfixture/u_LASER/X\[3:0\]} \
{/testfixture/u_LASER/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"record" \
{/testfixture/u_LASER/pointx\[39:0\]} \
{/testfixture/u_LASER/pointy\[39:0\]} \
{/testfixture/u_LASER/init_done} \
{/testfixture/u_LASER/count\[5:0\]} \
{/testfixture/u_LASER/c1_cover_done} \
{/testfixture/u_LASER/DONE} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_LASER/point_covered\[5:0\]} \
{/testfixture/u_LASER/record_max_covered\[5:0\]} \
{/testfixture/u_LASER/seecover\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_LASER/x\[3:0\]} \
{/testfixture/u_LASER/y\[3:0\]} \
{/testfixture/u_LASER/adjust_c1} \
{/testfixture/u_LASER/adjust_c2} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/testfixture/u_LASER/change_times\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_LASER/cur_state\[1:0\]} \
{/testfixture/u_LASER/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"final output" \
{/testfixture/u_LASER/C1X\[3:0\]} \
{/testfixture/u_LASER/C1Y\[3:0\]} \
{/testfixture/u_LASER/C2X\[3:0\]} \
{/testfixture/u_LASER/C2Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 6571652.324123 -snap {("G5" 3)}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 6650452.030057 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 6653942.594019 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 6653179.540502 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 6652546.368434 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6653293.186770 -snap {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSetCursor -win $_nWave1 6654056.240287 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 6654283.532824 -snap {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetCursor -win $_nWave1 6654510.825361 -snap {("G4" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSetCursor -win $_nWave1 6651539.787199 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6652335.311078 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6653049.659052 -snap {("G6" 1)}
wvSetCursor -win $_nWave1 6669901.777153 -snap {("G5" 2)}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSetCursor -win $_nWave1 6665596.207095 -snap {("G9" 0)}
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "record" 5 )} 
wvSelectSignal -win $_nWave1 {( "record" 6 )} 
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 25850160.402527 -snap {("G9" 0)}
wvSetCursor -win $_nWave1 25838844.481219 -snap {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 6668326.964575 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6669203.664361 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6651507.316836 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6652270.370354 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6651491.081655 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6652189.194447 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6651604.727924 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6652319.075897 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6651783.314917 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6652578.838797 -snap {("record" 5)}
wvSetCursor -win $_nWave1 6651653.433467 -snap {("record" 6)}
wvSetCursor -win $_nWave1 12452.383992 -snap {("G6" 2)}
wvSetCursor -win $_nWave1 2824.921531 -snap {("record" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 50783.646841 -snap {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "record" 6 )} 
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "final output" 1 )} 
wvSelectSignal -win $_nWave1 {( "final output" 2 )} 
wvSelectSignal -win $_nWave1 {( "final output" 3 )} 
wvSelectSignal -win $_nWave1 {( "final output" 4 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetCursor -win $_nWave1 35473.870955 -snap {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSelectSignal -win $_nWave1 {( "record" 3 )} 
wvSetCursor -win $_nWave1 35376.459868 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 34045.175008 -snap {("record" 4)}
wvSetCursor -win $_nWave1 34597.171170 -snap {("record" 4)}
wvSetCursor -win $_nWave1 35311.519143 -snap {("record" 4)}
wvSetCursor -win $_nWave1 34045.175008 -snap {("record" 4)}
wvSetCursor -win $_nWave1 34727.052619 -snap {("record" 4)}
wvSetCursor -win $_nWave1 34986.815519 -snap {("G5" 2)}
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSetCursor -win $_nWave1 36902.566902 -snap {("G9" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSetCursor -win $_nWave1 36253.159654 -snap {("record" 4)}
wvSetCursor -win $_nWave1 35603.752405 -snap {("record" 4)}
wvSetCursor -win $_nWave1 36383.041103 -snap {("record" 4)}
wvSetCursor -win $_nWave1 36902.566902 -snap {("record" 4)}
wvSetCursor -win $_nWave1 37811.737050 -snap {("record" 4)}
wvSetCursor -win $_nWave1 38623.496111 -snap {("record" 4)}
wvSetCursor -win $_nWave1 39402.784809 -snap {("record" 4)}
wvSetCursor -win $_nWave1 52033.755795 -snap {("final output" 1)}
wvSetCursor -win $_nWave1 38591.025749 -snap {("G9" 0)}
wvSetCursor -win $_nWave1 45669.564759 -snap {("G9" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 384449.091178 -snap {("record" 1)}
wvSetCursor -win $_nWave1 548619.243627 -snap {("record" 1)}
wvSetCursor -win $_nWave1 827085.071831 -snap {("record" 1)}
wvSetCursor -win $_nWave1 943458.850782 -snap {("record" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetCursor -win $_nWave1 7057134.546945 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 7079993.682096 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 7100774.714051 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 7134024.365180 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 7198445.564242 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 7287804.001651 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 7400021.574211 -snap {("G5" 1)}
wvZoom -win $_nWave1 7545488.797900 7564191.726660
wvSetCursor -win $_nWave1 7552814.829902 -snap {("G5" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 470348491.797235 -snap {("G9" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvExit
