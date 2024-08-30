wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/YanYouChen/2024icsontestpratice/109_GeoFence/build/geofence.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/R\[10:0\]" \
           "/testfixture/u_geofence/X\[9:0\]" \
           "/testfixture/u_geofence/Y\[9:0\]"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -Unsigned
wvZoom -win $_nWave1 260346175.370763 403001613.930085
wvSetCursor -win $_nWave1 280170499.583902 -snap {("G2" 0)}
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/clk"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectGroup -win $_nWave1 {G3}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/point_x\[0:5\]" \
           "/testfixture/u_geofence/point_y\[0:5\]" \
           "/testfixture/u_geofence/radius\[0:5\]"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -Unsigned
wvSelectGroup -win $_nWave1 {G4}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/vector_x\[0:4\]" \
           "/testfixture/u_geofence/vector_y\[0:4\]"
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/stage"
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectGroup -win $_nWave1 {G6}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/cur_state\[3:0\]"
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectGroup -win $_nWave1 {G6}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/count\[3:0\]"
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSelectGroup -win $_nWave1 {G6}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectGroup -win $_nWave1 {G7}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/R\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/count\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/point_x\[0:5\]} \
{/testfixture/u_geofence/point_y\[0:5\]} \
{/testfixture/u_geofence/radius\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/vector_x\[0:4\]} \
{/testfixture/u_geofence/vector_y\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/cur_state\[3:0\]} \
{/testfixture/u_geofence/stage} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 27239.767096 -snap {("G7" 0)}
wvSetCursor -win $_nWave1 62651.464320 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetCursor -win $_nWave1 82594.865229 -snap {("G5" 2)}
wvZoom -win $_nWave1 104970.388200 106429.661438
wvSetCursor -win $_nWave1 106081.147857 -snap {("G7" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 40566.165523 -snap {("G7" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetCursor -win $_nWave1 67305.920932 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 47870.684074 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 123002.874882 -snap {("G5" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/hexarea\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/count\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/point_x\[0:5\]} \
{/testfixture/u_geofence/point_y\[0:5\]} \
{/testfixture/u_geofence/radius\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/vector_x\[0:4\]} \
{/testfixture/u_geofence/vector_y\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/cur_state\[3:0\]} \
{/testfixture/u_geofence/stage} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/hexarea\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/count\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/point_x\[0:5\]} \
{/testfixture/u_geofence/point_y\[0:5\]} \
{/testfixture/u_geofence/radius\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/vector_x\[0:4\]} \
{/testfixture/u_geofence/vector_y\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/cur_state\[3:0\]} \
{/testfixture/u_geofence/stage} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetCursor -win $_nWave1 125742.069338 -snap {("G8" 0)}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 93263.049354 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 96263.119473 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 101480.632723 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 107350.335130 -snap {("G8" 0)}
wvSetCursor -win $_nWave1 107741.648624 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 111393.907899 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 44609.738292 -snap {("G8" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 92871.735860 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 96654.432967 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 102393.697542 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 107741.648624 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 112437.410550 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 118567.988619 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 122089.810063 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 118959.302113 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 122089.810063 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 118698.426450 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 121698.496569 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 46174.992267 -snap {("G8" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 124437.691026 -snap {("G7" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/sqrt_in0\[21:0\]" \
           "/testfixture/u_geofence/sqrt_in1\[21:0\]"
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSelectGroup -win $_nWave1 {G9}
wvSelectSignal -win $_nWave1 {( "G8" 2 )} 
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSetPosition -win $_nWave1 {("G8" 1)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/sqrt_out0\[10:0\]"
wvSetPosition -win $_nWave1 {("G8" 1)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSelectGroup -win $_nWave1 {G9}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G8" 3)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/sqrt_out1\[10:0\]"
wvSetPosition -win $_nWave1 {("G8" 3)}
wvSetPosition -win $_nWave1 {("G8" 4)}
wvSelectGroup -win $_nWave1 {G9}
wvSetPosition -win $_nWave1 {("G8" 3)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/triarea\[21:0\]"
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/R\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/count\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/point_x\[0:5\]} \
{/testfixture/u_geofence/point_y\[0:5\]} \
{/testfixture/u_geofence/radius\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/vector_x\[0:4\]} \
{/testfixture/u_geofence/vector_y\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/cur_state\[3:0\]} \
{/testfixture/u_geofence/stage} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/testfixture/u_geofence/hexarea\[21:0\]} \
{/testfixture/u_geofence/triarea\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/testfixture/u_geofence/sqrt_in0\[21:0\]} \
{/testfixture/u_geofence/sqrt_out0\[10:0\]} \
{/testfixture/u_geofence/sqrt_in1\[21:0\]} \
{/testfixture/u_geofence/sqrt_out1\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G8" 1 )} 
wvSelectSignal -win $_nWave1 {( "G8" 1 2 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G8" 1 2 3 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSelectGroup -win $_nWave1 {G9}
wvSelectSignal -win $_nWave1 {( "G8" 3 )} 
wvSelectSignal -win $_nWave1 {( "G8" 3 4 )} 
wvSetPosition -win $_nWave1 {("G8" 3)}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G9" 2)}
wvSetPosition -win $_nWave1 {("G9" 2)}
wvSelectGroup -win $_nWave1 {G10}
wvSelectSignal -win $_nWave1 {( "G7" 2 )} 
wvSelectSignal -win $_nWave1 {( "G7" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 61827.532019 -snap {("G10" 0)}
wvSetCursor -win $_nWave1 172960.564256 -snap {("G7" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G8" 1)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G8" 1)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G9" 1)}
wvSetPosition -win $_nWave1 {("G9" 2)}
wvSetPosition -win $_nWave1 {("G10" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/S\[0:5\]"
wvSetPosition -win $_nWave1 {("G10" 0)}
wvSetPosition -win $_nWave1 {("G10" 1)}
wvSetPosition -win $_nWave1 {("G10" 1)}
wvSelectGroup -win $_nWave1 {G11}
wvSetPosition -win $_nWave1 {("G11" 0)}
wvSetPosition -win $_nWave1 {("G9" 2)}
wvSetPosition -win $_nWave1 {("G11" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/is_inside" \
           "/testfixture/u_geofence/valid"
wvSetPosition -win $_nWave1 {("G11" 0)}
wvSetPosition -win $_nWave1 {("G11" 2)}
wvSetPosition -win $_nWave1 {("G11" 2)}
wvSetPosition -win $_nWave1 {("G11" 2)}
wvSetPosition -win $_nWave1 {("G11" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/R\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/count\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/point_x\[0:5\]} \
{/testfixture/u_geofence/point_y\[0:5\]} \
{/testfixture/u_geofence/radius\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/vector_x\[0:4\]} \
{/testfixture/u_geofence/vector_y\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/cur_state\[3:0\]} \
{/testfixture/u_geofence/stage} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/testfixture/u_geofence/hexarea\[21:0\]} \
{/testfixture/u_geofence/triarea\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/testfixture/u_geofence/sqrt_in0\[21:0\]} \
{/testfixture/u_geofence/sqrt_out0\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/testfixture/u_geofence/sqrt_in1\[21:0\]} \
{/testfixture/u_geofence/sqrt_out1\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/testfixture/u_geofence/S\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G12" \
}
wvSetPosition -win $_nWave1 {("G11" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G11" 2 )} 
wvSetPosition -win $_nWave1 {("G11" 1)}
wvSetPosition -win $_nWave1 {("G11" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G11" 0)}
wvSetPosition -win $_nWave1 {("G11" 1)}
wvSelectGroup -win $_nWave1 {G12}
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 174134.504737 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 177786.764013 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 173351.877750 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 177265.012688 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 171786.623775 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 177265.012688 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 173482.315581 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 177786.764013 -snap {("G11" 1)}
wvSetCursor -win $_nWave1 93263.049354 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 97828.373448 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 101350.194892 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 107089.459468 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 109959.091756 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 112306.972718 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 116872.296813 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 121828.934401 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 151829.635591 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 176873.699194 -snap {("G8" 0)}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSelectSignal -win $_nWave1 {( "G7" 2 )} 
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSelectGroup -win $_nWave1 {G8}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 624014.584767 -snap {("G12" 0)}
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
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSetCursor -win $_nWave1 240083.872224 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 237083.802105 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 242823.066681 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 248171.017763 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 238127.304755 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 242562.191018 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 237605.553430 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 242823.066681 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 248040.579932 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 253518.968845 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 258214.730770 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 237866.429093 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 232648.915842 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 237344.677768 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 253518.968845 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 176169.334905 -snap {("G11" 2)}
wvSetCursor -win $_nWave1 205909.160433 -snap {("G12" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetCursor -win $_nWave1 261084.363058 -snap {("G5" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 180734.658999 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 177082.399724 -snap {("G11" 1)}
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {G5}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetCursor -win $_nWave1 179925.944445 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 182534.701071 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 207317.889011 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 202752.564917 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 207578.764673 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 216905.069609 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 232883.703939 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 237318.590202 -snap {("G6" 1)}
wvSetCursor -win $_nWave1 217361.602018 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 237383.809117 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 243031.767211 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 247531.872390 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 252423.291062 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 271858.527920 -snap {("G12" 0)}
wvSetCursor -win $_nWave1 255619.017928 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 256466.863831 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 271675.914957 -snap {("G9" 0)}
wvSetCursor -win $_nWave1 273110.731100 -snap {("G8" 1)}
wvSetCursor -win $_nWave1 276828.209291 -snap {("G9" 2)}
wvSetCursor -win $_nWave1 273306.387847 -snap {("G9" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetCursor -win $_nWave1 287458.892539 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 297698.262294 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 291958.997718 -snap {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetRadix -win $_nWave1 -Unsigned
wvSelectGroup -win $_nWave1 {G10}
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetRadix -win $_nWave1 -2Com
wvSetRadix -win $_nWave1 -Unsigned
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 259610.415565 -snap {("G12" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 48522.873230 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 52696.883831 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 74740.877314 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 68088.547920 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 62479.721175 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 58305.710575 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 52175.132506 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 144916.430534 -snap {("G12" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetCursor -win $_nWave1 65740.666957 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 70305.991051 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 53479.510818 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 57783.959250 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 52044.694674 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 48653.311061 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 51262.067687 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 52957.759493 -snap {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 \
           {( "G5" 1 2 )} {( "G6" 1 )} {( "G3" 1 2 3 )} {( "G4" \
           1 2 )} {( "G8" 1 2 )} {( "G9" 1 2 )} {( "G10" 1 )} {( "G11" 1 2 )} \
           
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G12" 0)}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/point_x\[0:5\]" \
           "/testfixture/u_geofence/point_y\[0:5\]" \
           "/testfixture/u_geofence/radius\[0:5\]"
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G12" 0)}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/count\[3:0\]"
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSelectGroup -win $_nWave1 {G6}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G12" 0)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G11" 0)}
wvSetPosition -win $_nWave1 {("G10" 0)}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/vector_x\[0:4\]" \
           "/testfixture/u_geofence/vector_y\[0:4\]"
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/R\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/count\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/point_x\[0:5\]} \
{/testfixture/u_geofence/point_y\[0:5\]} \
{/testfixture/u_geofence/radius\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/vector_x\[0:4\]} \
{/testfixture/u_geofence/vector_y\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvAddSignal -win $_nWave1 -group {"G12" \
}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 53088.197324 -snap {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 57653.521419 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 48131.559736 -snap {("G6" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/cur_state\[3:0\]"
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectGroup -win $_nWave1 {G4}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/R\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/count\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/point_x\[0:5\]} \
{/testfixture/u_geofence/point_y\[0:5\]} \
{/testfixture/u_geofence/radius\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/vector_x\[0:4\]} \
{/testfixture/u_geofence/vector_y\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvAddSignal -win $_nWave1 -group {"G12" \
}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G4}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetCursor -win $_nWave1 46957.619255 -snap {("G12" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetRadix -win $_nWave1 -Unsigned
wvSetCursor -win $_nWave1 17609.107221 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 52175.132506 -snap {("G3" 2)}
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 54914.326962 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 53479.510818 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 90523.854897 -snap {("G12" 0)}
wvSetCursor -win $_nWave1 16304.728908 -snap {("G9" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 57783.959250 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 53609.948649 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 57262.207925 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 53870.824312 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 57262.207925 -snap {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -Unsigned
wvSetCursor -win $_nWave1 62349.283344 -snap {("G5" 2)}
wvSetCursor -win $_nWave1 87784.660441 -snap {("G12" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -Unsigned
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 46435.867930 -snap {("G12" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G12" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G10" 0)}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/stage"
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/R\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/count\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/point_x\[0:5\]} \
{/testfixture/u_geofence/point_y\[0:5\]} \
{/testfixture/u_geofence/radius\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/vector_x\[0:4\]} \
{/testfixture/u_geofence/vector_y\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/testfixture/u_geofence/stage} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvAddSignal -win $_nWave1 -group {"G12" \
}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 78654.012252 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 72262.558520 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 76958.320446 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 33913.836129 -snap {("G12" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G12" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvAddSignal -win $_nWave1 "/testfixture/u_geofence/path"
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/R\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/count\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/point_x\[0:5\]} \
{/testfixture/u_geofence/point_y\[0:5\]} \
{/testfixture/u_geofence/radius\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/vector_x\[0:4\]} \
{/testfixture/u_geofence/vector_y\[0:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/testfixture/u_geofence/path} \
{/testfixture/u_geofence/stage} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvAddSignal -win $_nWave1 -group {"G12" \
}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 72001.682858 -snap {("G6" 0)}
wvSetCursor -win $_nWave1 71871.245026 -snap {("G6" 1)}
wvSetCursor -win $_nWave1 77480.071771 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 81914.958034 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 87393.346947 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 77349.633940 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 82175.833696 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 87262.909116 -snap {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetCursor -win $_nWave1 105002.454167 -snap {("G6" 1)}
wvSetCursor -win $_nWave1 107089.459468 -snap {("G6" 1)}
wvSetCursor -win $_nWave1 108002.524287 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 103437.200192 -snap {("G12" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G6}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1957610.971610 -snap {("G12" 0)}
wvZoom -win $_nWave1 630275.600667 646971.643069
wvExit
