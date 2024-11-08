module lods_sw_12 (
    input  [11:0] a, 
    output reg [3:0] c, 
    output reg v 
);

always @(*) begin
    if (a == 0) begin
       
        v = 0;
        c = 0;
 
    end else begin
      
        v = 1;
        
        casex(a)
            12'b1xxx_xxxx_xxxx: c = 11;
	   		12'b01xx_xxxx_xxxx: c = 10;
			12'b001x_xxxx_xxxx: c = 9;
	   		12'b0001_xxxx_xxxx: c = 8;
			12'b0000_1xxx_xxxx: c = 7;
	   		12'b0000_01xx_xxxx: c = 6;
			12'b0000_001x_xxxx: c = 5;
	   		12'b0000_0001_xxxx: c = 4;
			12'b0000_0000_1xxx: c = 3;
	   		12'b0000_0000_01xx: c = 2;
			12'b0000_0000_001x: c = 1;
	   		12'b0000_0000_0001: c = 0;
			12'b0000_0000_0000: c = 0;
        
		endcase
    end
end

endmodule

