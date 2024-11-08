module pre_sum #( parameter BUS_WIDTH = 11)(
    
    input [BUS_WIDTH-1:0] a,
    input [BUS_WIDTH-1:0] b,
    output [BUS_WIDTH:0] c
   
);



logic[BUS_WIDTH:0] carry_aux;
logic[BUS_WIDTH:0] a_aux;
logic[BUS_WIDTH:0] b_aux;

assign carry_aux[0] = 0;
assign a_aux = {1'b0, a};
assign b_aux = {1'b0, b};
assign c = carry_aux | a | b ;

genvar i;

generate

	for(i = 0; i < BUS_WIDTH ; i = i + 1)begin
		
		assign carry_aux[i+1] = (b[i] & carry_aux[i]) | (a[i] & carry_aux[i]) | (a[i] & b[i]);

	end	

endgenerate




endmodule

  
