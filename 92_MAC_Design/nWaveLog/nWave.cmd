wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/YanYouChen/summerwork1/ICC_91_0128/build/mac.fsdb}
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/mac_sim"
wvGetSignalSetScope -win $_nWave1 "/mac_sim/u_mac"
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/mac_sim/u_mac/clk} \
{/mac_sim/u_mac/instr1\[2:0\]} \
{/mac_sim/u_mac/instr2\[2:0\]} \
{/mac_sim/u_mac/instruction\[2:0\]} \
{/mac_sim/u_mac/mul_8_temp1\[15:0\]} \
{/mac_sim/u_mac/mul_8_temp2\[15:0\]} \
{/mac_sim/u_mac/mul_stage2\[31:0\]} \
{/mac_sim/u_mac/multiplicand\[15:0\]} \
{/mac_sim/u_mac/multiplicand_t\[15:0\]} \
{/mac_sim/u_mac/multiplier\[15:0\]} \
{/mac_sim/u_mac/multiplier_t\[15:0\]} \
{/mac_sim/u_mac/protect\[7:0\]} \
{/mac_sim/u_mac/reset_n} \
{/mac_sim/u_mac/result\[31:0\]} \
{/mac_sim/u_mac/stage2_protect\[7:0\]} \
{/mac_sim/u_mac/stage2_result\[31:0\]} \
{/mac_sim/u_mac/stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/mac_sim/u_mac/clk} \
{/mac_sim/u_mac/instr1\[2:0\]} \
{/mac_sim/u_mac/instr2\[2:0\]} \
{/mac_sim/u_mac/instruction\[2:0\]} \
{/mac_sim/u_mac/mul_8_temp1\[15:0\]} \
{/mac_sim/u_mac/mul_8_temp2\[15:0\]} \
{/mac_sim/u_mac/mul_stage2\[31:0\]} \
{/mac_sim/u_mac/multiplicand\[15:0\]} \
{/mac_sim/u_mac/multiplicand_t\[15:0\]} \
{/mac_sim/u_mac/multiplier\[15:0\]} \
{/mac_sim/u_mac/multiplier_t\[15:0\]} \
{/mac_sim/u_mac/protect\[7:0\]} \
{/mac_sim/u_mac/reset_n} \
{/mac_sim/u_mac/result\[31:0\]} \
{/mac_sim/u_mac/stage2_protect\[7:0\]} \
{/mac_sim/u_mac/stage2_result\[31:0\]} \
{/mac_sim/u_mac/stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 11 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 10 11 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 11 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 11 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 10 11 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 14 15 16 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 14 15 16 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectGroup -win $_nWave1 {G2}
wvSetCursor -win $_nWave1 4962.462193 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 4225.115216 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 14079.816080
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 14000.172103 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 5459.878804 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 4318.828017 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 9111.583366 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 2943.535947 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 6144.558140 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 6091.890498 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 6068.482658 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 6039.222857 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 6080.186578 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 7092.575681 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 6443.008106 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 30008.851561
wvSetCursor -win $_nWave1 30213.670166 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 29975.943787 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 14000.000000
wvSetCursor -win $_nWave1 29993.499668 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 29958.387907 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 29993.499668 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 30005.481462
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 54046.796678 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 53994.129037
wvSetCursor -win $_nWave1 55386.895548 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 54072.871628
wvSetCursor -win $_nWave1 53996.796146
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 40004.759468
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 11975.418834
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 14000.197040 -snap {("G1" 12)}
wvShowFilterTextField -win $_nWave1 -on
wvSetCursor -win $_nWave1 11963.714914 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 11993.962791
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 14030.444917
wvSetCursor -win $_nWave1 14007.037076
wvSetCursor -win $_nWave1 13995.333156 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 13995.333156 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 14001.185116 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvExit
