module mac (instruction, multiplier, multiplicand, stall, clk, reset_n, result, protect);

input [15:0] multiplier;
input [15:0] multiplicand; 
input  clk;
input  reset_n;
input  stall;
input  [2:0] instruction;

output [31:0] result;
output [7:0] protect;

//Add you design here
//1st always
reg signed [15:0] multiplier_t;
reg signed [15:0] multiplicand_t;
reg [2:0] instr1;
//2nd always
reg signed [31:0] mul_stage2;
reg signed [15:0] mul_8_temp1;
reg signed [15:0] mul_8_temp2;
//3rd always
reg [2:0] instr2;
//4th always
reg signed [31:0] stage2_result;
reg signed [7:0] stage2_protect;

//1st
always @(posedge clk or negedge reset_n) begin
    if (~reset_n) begin
        multiplicand_t <= 16'd0;
        multiplier_t <= 16'd0;
        instr1 <= 3'd0;
    end
    else if (!stall) begin
        multiplicand_t <= multiplicand;
        multiplier_t <= multiplier;
        instr1 <= instruction;
    end
end

//2nd
always @(posedge clk or negedge reset_n) begin
    if (~reset_n) begin
        mul_stage2 <= 32'd0;
        mul_8_temp1 <= 20'd0;
        mul_8_temp2 <= 20'd0;
    end
    else if ((instr1==3'b001 || instr1==3'b010) && !stall) begin
        mul_stage2 <= multiplicand_t * multiplier_t;
    end
    else if ((instr1==3'b101 || instr1==3'b110) && !stall) begin
        mul_8_temp1 <= $signed(multiplicand_t[7:0]) * $signed(multiplier_t[7:0]);
        mul_8_temp2 <= $signed(multiplicand_t[15:8]) * $signed(multiplier_t[15:8]);
    end
end

//3rd
always @(posedge clk or negedge reset_n) begin
    if (~reset_n) begin
        instr2 <= 3'd0;
    end
    else if (~stall) begin
        instr2 <= instr1;
    end
end

//4th
always @(posedge clk or negedge reset_n) begin
    if (~reset_n) begin
        {stage2_protect,stage2_result} <= 40'd0;
    end
    else if (!stall) begin
        
        case (instr2)
            3'b000 : {stage2_protect,stage2_result} <= 40'd0;
            3'b001 : {stage2_protect,stage2_result} <= mul_stage2;
            3'b010 : {stage2_protect,stage2_result} <= $signed({stage2_protect,stage2_result}) + mul_stage2;
            3'b011 : begin
                    if ($signed({stage2_protect,stage2_result}) > $signed(40'h007FFFFFFF)) begin
                        {stage2_result} <= 32'h7FFFFFFF;
                    end
                    else if ($signed({stage2_protect,stage2_result}) < $signed(40'hFF80000000)) begin
                        {stage2_result} <= 32'h80000000;
                    end    
            end
            3'b100 : {stage2_protect,stage2_result} <= 40'd0;
            3'b101 : begin
                    {stage2_protect[3:0],stage2_result[15:0]} <= mul_8_temp1;
                    {stage2_protect[7:4],stage2_result[31:16]} <= mul_8_temp2;
            end
            3'b110 : begin
                    {stage2_protect[3:0],stage2_result[15:0]} <= $signed({stage2_protect[3:0],stage2_result[15:0]}) + mul_8_temp1;
                    {stage2_protect[7:4],stage2_result[31:16]} <= $signed({stage2_protect[7:4],stage2_result[31:16]}) + mul_8_temp2;
            end
            3'b111 : begin
                    if ($signed({stage2_protect[3:0],stage2_result[15:0]}) > $signed(20'h07FFF)) begin
                        stage2_result[15:0] <= 16'h7FFF;
                    end
                    else if ($signed({stage2_protect[3:0],stage2_result[15:0]}) < $signed(20'hf8000)) begin
                        stage2_result[15:0] <= 16'h8000;
                    end

                    if ($signed({stage2_protect[7:4],stage2_result[31:16]}) > $signed(20'h07FFF)) begin
                        stage2_result[31:16] <= 16'h7FFF;
                    end
                    else if ($signed({stage2_protect[7:4],stage2_result[31:16]}) < $signed(20'hF8000)) begin
                        stage2_result[31:16] <= 16'h8000;
                    end
            end 
        endcase
    end
end

assign result = stage2_result;
assign protect = stage2_protect;


endmodule


