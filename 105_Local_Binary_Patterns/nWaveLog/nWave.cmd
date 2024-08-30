wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/YanYouChen/summerwork_104/LBP.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/LBP"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/LBP/STATE\[2:0\]} \
{/testfixture/LBP/clk} \
{/testfixture/LBP/count\[3:0\]} \
{/testfixture/LBP/finish} \
{/testfixture/LBP/gray_addr\[13:0\]} \
{/testfixture/LBP/gray_data\[7:0\]} \
{/testfixture/LBP/gray_ready} \
{/testfixture/LBP/gray_req} \
{/testfixture/LBP/lbp_addr\[13:0\]} \
{/testfixture/LBP/lbp_data\[7:0\]} \
{/testfixture/LBP/lbp_valid} \
{/testfixture/LBP/mid_x\[7:0\]} \
{/testfixture/LBP/mid_y\[7:0\]} \
{/testfixture/LBP/re_data\[7:0\]} \
{/testfixture/LBP/reset} \
{/testfixture/LBP/temp\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 4834229.948192 -snap {("G2" 0)}
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
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 2470.040500 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 3711.909291 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 3090.974895 -snap {("G2" 0)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 1785.186387 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvExit
