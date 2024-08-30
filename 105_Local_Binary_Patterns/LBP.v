
`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
input   	clk;
input   	reset;

output reg [13:0] 	gray_addr;
output  reg       	gray_req;

input   	gray_ready;
input   [7:0] 	gray_data;

output reg [13:0] 	lbp_addr;
output  reg	lbp_valid;
output reg [7:0] 	lbp_data;
output 	finish;

reg [6:0] mid_x,mid_y;
reg [3:0] count; 
reg [7:0] temp[1:0];

reg [1:0] STATE;
//==========re==========================================================//

always @(posedge clk or posedge reset) begin
    if (reset) begin
        gray_req <= 1'b0;
        lbp_valid <= 1'b0;
        mid_x <= 7'd1;
        mid_y <= 7'd1;
        count <= 4'd0;
        STATE <= 2'd0;
    end
    else begin
        case (STATE)
            2'd0 :begin
                gray_req <= 1'b1;
                if (gray_req) begin
                    case (count)
                        4'd0 : begin
                            gray_addr <= ( mid_x << 7 ) + mid_y ;
                            temp[1] <= 8'd0;
                        end
                        4'd1 : begin
                            gray_addr <= ( (mid_x-7'd1) << 7 ) + mid_y - 7'd1 ;
                            temp[0] <= gray_data;
                        end
                        4'd2 : begin
                            gray_addr <= ( (mid_x-7'd1) << 7 ) + mid_y ;
                            if ( gray_data >= temp[0] ) begin
                                temp[1] <= temp[1] + 8'd1;
                            end
                        end
                        4'd3 : begin
                            gray_addr <= ( (mid_x-7'd1) << 7 ) + mid_y + 7'd1 ;
                            if ( gray_data >= temp[0] ) begin
                                temp[1] <= temp[1] + 8'd2;
                            end
                        end
                        4'd4 : begin
                            gray_addr <= ( mid_x << 7 ) + mid_y - 7'd1 ;
                            if ( gray_data >= temp[0] ) begin
                                temp[1] <= temp[1] + 8'd4;
                            end
                        end
                        4'd5 : begin
                            gray_addr <= ( mid_x << 7 ) + mid_y + 7'd1 ;
                            if ( gray_data >= temp[0] ) begin
                                temp[1] <= temp[1] + 8'd8;
                            end
                        end
                        4'd6 : begin
                            gray_addr <= ( (mid_x+7'd1) << 7 ) + mid_y - 7'd1 ;
                            if ( gray_data >= temp[0] ) begin
                                temp[1] <= temp[1] + 8'd16;
                            end
                        end
                        4'd7 : begin
                            gray_addr <= ( (mid_x+7'd1) << 7 ) + mid_y  ;
                            if ( gray_data >= temp[0] ) begin
                                temp[1] <= temp[1] + 8'd32;
                            end
                        end
                        4'd8 : begin
                            gray_addr <= ( (mid_x+7'd1) << 7 ) + mid_y + 7'd1 ;
                            if ( gray_data >= temp[0] ) begin
                                temp[1] <= temp[1] + 8'd64;
                            end
                        end
                        4'd9 :begin
                            if ( gray_data >= temp[0] ) begin
                                temp[1] <= temp[1] + 8'd128;
                            end
                        end
                        default: ;
                    endcase
                    count <= count + 4'd1;
                    if (count == 4'd9) begin
                        count <= 4'd0;
                        STATE <= 2'd1;
                    end
                end
            end

            2'd1 :begin
                lbp_valid <= 1'b1;
                lbp_addr <= ( mid_x << 7 ) + mid_y ;
                lbp_data <= temp[1];
                mid_y <= mid_y + 7'd1;
                STATE <= 2'd0;
                if (mid_y==7'd127) begin
                    mid_y <= 7'd1;
                    mid_x <= mid_x + 7'd1;
                    if (mid_x==7'd126) begin
                        STATE <= 2'd2;
                    end
                    else begin
                        lbp_valid <= 1'b0;
                    end
                end
            end

            2'd2 : lbp_valid <= 1'b0;
            default: ;
        endcase
    end
end
assign finish = ( mid_x==8'd126 && mid_y==8'd127 ) ? 1:0;


//====================================================================
endmodule
