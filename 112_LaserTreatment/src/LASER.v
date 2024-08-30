`define abs(a,b) ((a>b)?a-b:b-a)
`define in_circle(x,y,dx,dy) ( {1'b0,square[`abs(x,dx)]} + {1'b0,square[`abs(y,dy)]} <=9'd16 )
module LASER (
input CLK,
input RST,
input [3:0] X,
input [3:0] Y,
output reg [3:0] C1X,
output reg [3:0] C1Y,
output reg [3:0] C2X,
output reg [3:0] C2Y,
output DONE );

/*************************

    The question assumes a fixed area of 16x16 with 40 targets.
    Only two laser shots are allowed on this area,
    and the lasers have a circular shape with a radius of 4.
    
    Please find the positions of the centers of these two circles such that
    they cover the maximum number of targets.

*************************/

parameter[1:0]  init = 2'd0,
                c1_cover = 2'd1,
                c2_cover = 2'd2,
                finish = 2'd3;

reg [1:0] cur_state, next_state;

reg [3:0] pointx [39:0]; // for record point X
reg [3:0] pointy [39:0]; // for record point Y

reg [5:0] count;
reg [5:0] point_covered;
reg [5:0] record_max_covered;
wire init_done;
wire c1_cover_done;

reg [3:0] x,y;
reg adjust_c1, adjust_c2;
reg [2:0] change_times; // iterater times

// assign
    wire [8:0] square [0:15];
    assign square[0] = 9'd0;
    assign square[1] = 9'd1;
    assign square[2] = 9'd4;
    assign square[3] = 9'd9;
    assign square[4] = 9'd16;
    assign square[5] = 9'd25;
    assign square[6] = 9'd36;
    assign square[7] = 9'd49;
    assign square[8] = 9'd64;
    assign square[9] = 9'd81;
    assign square[10] = 9'd100;
    assign square[11] = 9'd121;
    assign square[12] = 9'd144;
    assign square[13] = 9'd169;
    assign square[14] = 9'd196;
    assign square[15] = 9'd255;

assign init_done = (count == 6'd39 && cur_state==init)? 1'b1 : 1'b0 ;
assign c1_cover_done = (count == 6'd19 && cur_state==c1_cover)? 1'b1 : 1'b0 ;
assign DONE = (cur_state == finish)? 1'b1 : 1'b0 ;


always @(posedge CLK)begin
    if (RST)
        cur_state <= init;
    else
        cur_state <= next_state;
end
always @(*) begin
    case (cur_state)
        init : begin
            if(init_done)
                next_state = c1_cover;
            else
                next_state = cur_state;
        end
        c1_cover : begin
            if(c1_cover_done)
                next_state = c2_cover;
            else
                next_state = cur_state;
        end
        c2_cover : begin
            if(change_times == 3'd6)begin
                next_state = finish;
            end
            else begin
                next_state = c1_cover;
            end
        end
        finish : begin
            next_state = init;
        end
    endcase
end


integer i ;
always @(posedge CLK) begin
    if (RST) begin
        for ( i=0 ; i<40 ; i=i+1) begin
            pointx[i] <= 4'b0;
            pointy[i] <= 4'b0;            
        end
        point_covered <= 6'd0;
    end
    else begin
        case (cur_state)
            init : begin
                pointx[count] <= X;
                pointy[count] <= Y;
            end
            c1_cover : begin
                if(adjust_c2)begin
                    if ( (`in_circle(x,y,pointx[count],pointy[count])||`in_circle(C2X,C2Y,pointx[count],pointy[count])) && 
                         (`in_circle(x,y,pointx[count+6'd20],pointy[count+6'd20])||`in_circle(C2X,C2Y,pointx[count+6'd20],pointy[count+6'd20]))) begin
                        point_covered <= point_covered + 6'd2;
                    end
                    else if( `in_circle(x,y,pointx[count],pointy[count])||`in_circle(C2X,C2Y,pointx[count],pointy[count]) )begin
                        point_covered <= point_covered + 6'd1;
                    end
                    else if( `in_circle(x,y,pointx[count+6'd20],pointy[count+6'd20])||`in_circle(C2X,C2Y,pointx[count+6'd20],pointy[count+6'd20]) )begin
                        point_covered <= point_covered + 6'd1;
                    end
                end
                else begin // adjust_c1
                    if ( (`in_circle(x,y,pointx[count],pointy[count])||`in_circle(C1X,C1Y,pointx[count],pointy[count])) && 
                         (`in_circle(x,y,pointx[count+6'd20],pointy[count+6'd20])||`in_circle(C1X,C1Y,pointx[count+6'd20],pointy[count+6'd20]))) begin
                        point_covered <= point_covered + 6'd2;
                    end
                    else if( `in_circle(x,y,pointx[count],pointy[count])||`in_circle(C1X,C1Y,pointx[count],pointy[count]) )begin
                        point_covered <= point_covered + 6'd1;
                    end
                    else if( `in_circle(x,y,pointx[count+6'd20],pointy[count+6'd20])||`in_circle(C1X,C1Y,pointx[count+6'd20],pointy[count+6'd20]) )begin
                        point_covered <= point_covered + 6'd1;
                    end
                end
            end
            c2_cover : begin
                point_covered <= 6'd0;
            end 
        endcase
    end
end

always @(posedge CLK) begin
    if (RST) begin
        count <= 6'd0;
    end
    else begin
        if (cur_state == init) begin
            if (init_done) begin
                count <= 6'd0;
            end else begin
                count <= count + 6'd1;
            end        
        end
        else if(cur_state == c1_cover) begin
            count <= count + 6'd1;
        end
        else begin
            count <= 6'd0;
        end
    end
end

always @(posedge CLK) begin
    if (RST) begin
        x <= 4'd0;
        y <= 4'd0;
        change_times <= 3'd0;
    end 
    else begin
        if (cur_state == c2_cover) begin
            x <= x + 4'd1;
            if(x == 4'd15)begin
                y <= y + 4'd1;
                x <= 4'd0;
                if(y == 4'd15)begin
                    x <= 4'd0;
                    y <= 4'd0;
                    change_times <= change_times + 3'd1;
                end
            end
        end
        else if(cur_state == finish) begin
            x <= 4'd0;
            y <= 4'd0;
            change_times <= 3'd0;
        end
    end
end

always @(posedge CLK) begin
    if (RST) begin
        C1X <= 4'b0;
        C1Y <= 4'b0;
        C2X <= 4'b0;
        C2Y <= 4'b0;
        adjust_c1 <= 1'b0;
        adjust_c2 <= 1'b1;
        record_max_covered <= 6'd0;
    end
    else begin
        case (cur_state)
            c2_cover : begin
                if (record_max_covered <= point_covered) begin
                    if (adjust_c2) begin
                        C1X <= x;
                        C1Y <= y;
                    end
                    else begin //adjust_c1
                        C2X <= x;
                        C2Y <= y;
                    end
                    record_max_covered <= point_covered;
                end
                if(x==4'd15 && y==4'd15)begin
                    if (adjust_c2) begin
                        adjust_c1 <= 1'b1;
                        adjust_c2 <= 1'b0;
                    end
                    else begin //adjust_c1
                        adjust_c1 <= 1'b0;
                        adjust_c2 <= 1'b1;
                    end
                end
            end

            finish :begin // finish...
                record_max_covered <= 6'd0;
                adjust_c1 <= 1'b0;
                adjust_c2 <= 1'b1;
            end
        endcase
    end
end

endmodule


