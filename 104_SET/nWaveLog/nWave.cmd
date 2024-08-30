wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/YanYouChen/summer/summerwork2_103/build/SET.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture1"
wvGetSignalSetScope -win $_nWave1 "/testfixture1/u_set"
wvAddSignal -win $_nWave1 "/testfixture1/u_set/busy" \
           "/testfixture1/u_set/candidate\[7:0\]" \
           "/testfixture1/u_set/central\[23:0\]" "/testfixture1/u_set/clk" \
           "/testfixture1/u_set/count\[1:0\]" "/testfixture1/u_set/en" \
           "/testfixture1/u_set/i\[31:0\]" "/testfixture1/u_set/mode\[1:0\]" \
           "/testfixture1/u_set/radius\[11:0\]" "/testfixture1/u_set/rst" \
           "/testfixture1/u_set/setA_r\[3:0\]" \
           "/testfixture1/u_set/setA_x\[3:0\]" \
           "/testfixture1/u_set/setA_y\[3:0\]" \
           "/testfixture1/u_set/setB_r\[3:0\]" \
           "/testfixture1/u_set/setB_x\[3:0\]" \
           "/testfixture1/u_set/setB_y\[3:0\]" \
           "/testfixture1/u_set/setC_r\[3:0\]" \
           "/testfixture1/u_set/setC_x\[3:0\]" \
           "/testfixture1/u_set/setC_y\[3:0\]" \
           "/testfixture1/u_set/square\[0:8\]" "/testfixture1/u_set/valid" \
           "/testfixture1/u_set/x\[3:0\]" "/testfixture1/u_set/y\[3:0\]"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture1/u_set/busy} \
{/testfixture1/u_set/candidate\[7:0\]} \
{/testfixture1/u_set/central\[23:0\]} \
{/testfixture1/u_set/clk} \
{/testfixture1/u_set/count\[1:0\]} \
{/testfixture1/u_set/en} \
{/testfixture1/u_set/i\[31:0\]} \
{/testfixture1/u_set/mode\[1:0\]} \
{/testfixture1/u_set/radius\[11:0\]} \
{/testfixture1/u_set/rst} \
{/testfixture1/u_set/setA_r\[3:0\]} \
{/testfixture1/u_set/setA_x\[3:0\]} \
{/testfixture1/u_set/setA_y\[3:0\]} \
{/testfixture1/u_set/setB_r\[3:0\]} \
{/testfixture1/u_set/setB_x\[3:0\]} \
{/testfixture1/u_set/setB_y\[3:0\]} \
{/testfixture1/u_set/setC_r\[3:0\]} \
{/testfixture1/u_set/setC_x\[3:0\]} \
{/testfixture1/u_set/setC_y\[3:0\]} \
{/testfixture1/u_set/square\[0:8\]} \
{/testfixture1/u_set/valid} \
{/testfixture1/u_set/x\[3:0\]} \
{/testfixture1/u_set/y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 5112.646289 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 17396.722606 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 16607.522172 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 17362.409544 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetCursor -win $_nWave1 4529.324229 -snap {("G1" 3)}
wvZoom -win $_nWave1 4323.445855 4563.637291
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
wvSetCursor -win $_nWave1 5512.671321 -snap {("G1" 2)}
wvResizeWindow -win $_nWave1 0 24 1920 1129
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 6721.754540 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 6444.976412 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 5614.642027 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 6781.064139 -snap {("G1" 2)}
wvExit
