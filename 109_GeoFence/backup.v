`define product(Ax,Ay,Bx,By) ((Ax*By-Bx*Ay))
`define len(a,b) (a*a + b*b) 
`define abs(a,b) (a>b)? a-b : b-a
module geofence ( clk,reset,X,Y,R,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output  valid;
output  is_inside;

    reg [3:0] cur_state,next_state;
    parameter [3:0] rec_data = 4'd0,
                    switch_vector = 4'd1,
                    cal_hexagon_edge = 4'd2,
                    cal_hexagon_area = 4'd3,
                    cal_hexagon_len = 4'd4,
                    cal_tri_S = 4'd5,
                    cal_tri_area = 4'd6,
                    compare_area = 4'd7,
                    cal_vector = 4'd8;

    reg [3:0] count;
    reg [9:0] point_x[0:5];
    reg [9:0] point_y[0:5];
    reg [10:0] radius[0:5];
    
    reg signed [10:0] vector_x [0:4];
    reg signed [10:0] vector_y [0:4]; 
    reg signed [10:0] hex_edge_x [0:3];
    reg signed [10:0] hex_edge_y [0:3];
    reg stage;
    reg signed [20:0] hexarea;
    reg signed [20:0] triarea;
    reg [11:0] S[0:5];
    
    
    
    //in0 for vector
    //in1 for edge
    reg [21:0] sqrt_in0,sqrt_in1;
    wire [10:0] sqrt_out0,sqrt_out1;
    DW_sqrt #(22,0) sqrt0(sqrt_in0,sqrt_out0);
    DW_sqrt #(22,0) sqrt1(sqrt_in1,sqrt_out1);

    assign valid = (cur_state==compare_area)?1'b1:1'b0;
    assign is_inside = (cur_state==compare_area)? ((triarea>hexarea)?1'b0:1'b1) : 1'b0;

    always @(posedge clk or posedge reset) begin
        if(reset)begin
            {radius[0],radius[1],radius[2],radius[3],radius[4],radius[5]} <= 66'd0;
            {point_x[0],point_x[1],point_x[2],point_x[3],point_x[4],point_x[5]} <= 60'd0;
            {point_y[0],point_y[1],point_y[2],point_y[3],point_y[4],point_y[5]} <= 60'd0;
            {vector_x[0],vector_x[1],vector_x[2],vector_x[3],vector_x[4]} <= 55'd0;
            {vector_y[0],vector_y[1],vector_y[2],vector_y[3],vector_y[4]} <= 55'd0;
            {hex_edge_x[0],hex_edge_x[1],hex_edge_x[2],hex_edge_x[3]} <= 44'd0;
            {hex_edge_y[0],hex_edge_y[1],hex_edge_y[2],hex_edge_y[3]} <= 44'd0;
            stage <= 1'b0;
            count <= 4'd0;
            hexarea <= 22'd0;
            triarea <= 22'd0;
            {S[0],S[1],S[2],S[3],S[4],S[5]} <= 72'd0;
        end 
        else begin
            case (cur_state)
                rec_data:begin
                    radius[count] <= R;
                    point_x[count] <= X;
                    point_y[count] <= Y;
                    if(count==4'd5)
                        count <= 4'd0;
                    else
                        count <= count + 4'd1;
                end
                cal_vector:begin
                    vector_x[count] <= (point_x[count+4'd1] - point_x[0]);
                    vector_y[count] <= (point_y[count+4'd1] - point_y[0]);
                    if(count==4'd4)
                        count <= 4'd0;
                    else
                        count <= count + 4'd1;
                end
                switch_vector:begin
                    if(`product(vector_x[0+stage],vector_y[0+stage],vector_x[1+stage],vector_y[1+stage])<0)begin
                        vector_x[0+stage] <= vector_x[1+stage];
                        vector_x[1+stage] <= vector_x[0+stage];
                        vector_y[0+stage] <= vector_y[1+stage];
                        vector_y[1+stage] <= vector_y[0+stage];
                        radius[1+stage] <= radius[2+stage];
                        radius[2+stage] <= radius[1+stage];
                        point_x[1+stage] <= point_x[2+stage];
                        point_x[2+stage] <= point_x[1+stage];
                        point_y[1+stage] <= point_y[2+stage];
                        point_y[2+stage] <= point_y[1+stage];
                        count[0+(stage<<1)] <= 1'b0;
                    end
                    else begin
                        count[0+(stage<<1)] <= 1'b1;
                    end

                    if(`product(vector_x[2+stage],vector_y[2+stage],vector_x[3+stage],vector_y[3+stage])<0) begin
                        vector_x[2+stage] <= vector_x[3+stage];
                        vector_x[3+stage] <= vector_x[2+stage];
                        vector_y[2+stage] <= vector_y[3+stage];
                        vector_y[3+stage] <= vector_y[2+stage];
                        radius[3+stage] <= radius[4+stage];
                        radius[4+stage] <= radius[3+stage];
                        point_x[3+stage] <= point_x[4+stage];
                        point_x[4+stage] <= point_x[3+stage];
                        point_y[3+stage] <= point_y[4+stage];
                        point_y[4+stage] <= point_y[3+stage];
                        count[1+(stage<<1)] <= 1'b0;
                    end
                    else begin
                        count[1+(stage<<1)] <= 1'b1;
                    end
                    stage <= ~stage;
                end 
                cal_hexagon_edge: begin
                    hex_edge_x[0] <= vector_x[1] - vector_x[0];
                    hex_edge_x[1] <= vector_x[2] - vector_x[1]; 
                    hex_edge_x[2] <= vector_x[3] - vector_x[2]; 
                    hex_edge_x[3] <= vector_x[4] - vector_x[3];
                    hex_edge_y[0] <= vector_y[1] - vector_y[0];
                    hex_edge_y[1] <= vector_y[2] - vector_y[1]; 
                    hex_edge_y[2] <= vector_y[3] - vector_y[2]; 
                    hex_edge_y[3] <= vector_y[4] - vector_y[3]; 
                    count <= 4'd0;
                end
                cal_hexagon_area:begin
                    if(count<4'd5)begin
                        hexarea <= hexarea + `product(point_x[count],point_y[count],point_x[count+4'd1],point_y[count+4'd1]);
                        count <= count + 4'd1;
                    end
                    else if(count==4'd5)begin
                        hexarea <= hexarea + `product(point_x[5],point_y[5],point_x[0],point_y[0]);
                        count <= count + 4'd1;
                    end
                    else begin
                        hexarea <= hexarea >> 1;
                        count <= 4'd0;
                    end
                end
                cal_hexagon_len:begin
                    // reuse the var vector_x and vector_y
                    // use to store the len of the hexagon edge
                    //edge_len[0~4] store in vector_x[0~4]
                    //edge_len[5] store in vector_y[0]
                    if(count<4'd2)
                        count <= count + 4'd1;
                    else
                        count <= 4'd0;

                    if(count==4'd0)begin
                        vector_x[0] <= sqrt_out0;
                        vector_y[0] <= sqrt_out1;
                    end
                    else if(count==4'd1) begin
                        vector_x[1] <= sqrt_out0;
                        vector_x[2] <= sqrt_out1;
                    end
                    else begin
                        vector_x[3] <= sqrt_out0;
                        vector_x[4] <= sqrt_out1;
                    end
                end
                cal_tri_S:begin
                    S[0] <= (radius[0]+radius[1]+vector_x[0])>>1;
                    S[1] <= (radius[1]+radius[2]+vector_x[1])>>1;
                    S[2] <= (radius[2]+radius[3]+vector_x[2])>>1;
                    S[3] <= (radius[3]+radius[4]+vector_x[3])>>1;
                    S[4] <= (radius[4]+radius[5]+vector_x[4])>>1;
                    S[5] <= (radius[0]+radius[5]+vector_y[0])>>1;
                end
                cal_tri_area: begin
                    if(count<4'd6)
                        count <= count + 4'd1;
                    else
                        count <= 4'd0;
                    triarea <= triarea + (sqrt_out0*sqrt_out1);
                end
                compare_area: begin
                    hexarea <= 22'd0;
                    triarea <= 22'd0;
                    count <= 4'd0;
                end
                default: begin
                    
                end
            endcase
        end
    end
    // always @(*) begin
    //     case (cur_state)
    //         switch_vector: begin
                
    //         end
    //         default: begin
                
    //         end
    //     endcase
    // end
    always @(*) begin
        case (cur_state)
            cal_hexagon_len:begin
                if(count==4'd0)begin
                    sqrt_in0 = `len(vector_x[0],vector_y[0]);
                    sqrt_in1 = `len(vector_x[4],vector_y[4]);
                end
                else if(count==4'd1) begin
                    sqrt_in0 = `len(hex_edge_x[0],hex_edge_y[0]);
                    sqrt_in1 = `len(hex_edge_x[1],hex_edge_y[1]);
                end
                else begin
                    sqrt_in0 = `len(hex_edge_x[2],hex_edge_y[2]);
                    sqrt_in1 = `len(hex_edge_x[3],hex_edge_y[3]);
                end
            end 
            cal_tri_area:begin
                if(count<4'd5)begin
                    sqrt_in0 = S[count]*(`abs(S[count],radius[count]));
                    sqrt_in1 = (`abs(S[count],radius[count+4'd1]))*(`abs(S[count],vector_x[count]));
                end
                else begin //count==5
                    sqrt_in0 = S[5]*(`abs(S[5],radius[5]));
                    sqrt_in1 = (`abs(S[5],radius[0]))*(`abs(S[5],vector_y[0]));
                end
            end
            default: begin
                sqrt_in0 = 22'd0;
                sqrt_in1 = 22'd0;
            end
        endcase
    end
    always @(*) begin
        case (cur_state)
            rec_data:begin
                if(count == 4'd5)
                    next_state = cal_vector;
                else
                    next_state = rec_data;
            end 
            cal_vector: begin
                if(count==4'd4)
                    next_state = switch_vector;
                else
                    next_state = cal_vector;
            end
            switch_vector:begin
                if(count==4'b1111)begin
                    next_state = cal_hexagon_edge;
                end
                else begin
                    next_state = switch_vector;
                end
            end
            cal_hexagon_edge: begin
                next_state = cal_hexagon_area;
            end
            cal_hexagon_area: begin
                if(count==4'd6)
                    next_state = cal_hexagon_len;
                else
                    next_state = cal_hexagon_area;
            end
            cal_hexagon_len: begin
                if(count==4'd2)
                    next_state = cal_tri_S;
                else
                    next_state = cal_hexagon_len;
            end
            cal_tri_S:begin
                next_state = cal_tri_area;
            end
            cal_tri_area:begin
                if(count==4'd5)
                    next_state = compare_area;
                else
                next_state = cal_tri_area;
            end
            compare_area:begin
                next_state = rec_data;
            end
            default: begin
                next_state = rec_data;
            end
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <=  rec_data;
        end else begin
            cur_state <= next_state;
        end
    end

endmodule

