module lods_12 (
    input [11:0] a,
    output [3:0] c,
    output v
);

logic [2:0] v_a;
logic [5:0] z_a;
logic [3:0] c_a;


assign v = |v_a;
assign c = c_a;


lods_4 lods_4_comp_0 (
      .a(a[3:0]),
      .c(z_a[1:0]),
      .v(v_a[0])
  );

lods_4 lods_4_comp_1 (
      .a(a[7:4]),
      .c(z_a[3:2]),
      .v(v_a[1])
  );

lods_4 lods_4_comp_2 (
      .a(a[11:8]),
      .c(z_a[5:4]),
      .v(v_a[2])
  );

always@(*)begin

	if(v_a[2])begin
		
		c_a[3] = 1;
		c_a[2] = 0;
		c_a[1] = z_a[5];
		c_a[0] = z_a[4];
		
	end
	else if(v_a[1]) begin
		
		c_a[3] = 0;
		c_a[2] = 1;
		c_a[1] = z_a[3];
		c_a[0] = z_a[2];

	end
	else begin

		c_a[3] = 0;
		c_a[2] = 0;
		c_a[1] = z_a[1];
		c_a[0] = z_a[0];

	end
	

end 



endmodule

  
