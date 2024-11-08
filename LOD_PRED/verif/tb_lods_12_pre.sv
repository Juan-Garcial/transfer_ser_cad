module tb_lods_12_pre;

	logic [10:0] a;
	logic [10:0] b;
	logic [3:0] c;
	logic v;
	logic [3:0] c_exp;
	logic v_exp;
	logic [11:0] sum_aux;


lods_12_pre DUT(

	.a(a),
	.b(b),
	.c(c),
	.v(v)	
	
);

lods_sw_12 reference(

	.a(sum_aux), 
    .c(c_exp), 
    .v(v_exp) 

);

initial begin

	for (int i = 0 ; i < 2048 ; i = i + 1)begin

		for(int j = 0;  j < 2048; j = j +1 )begin
			
			a = i;
			b = j;
			sum_aux = a + b;
			#10;

			if((c != c_exp || v != v_exp) && v && v_exp)begin
				
				$display("ERROR: Suma incorrecta. a = %b, b = %b, sum= %b, c = %b, c_exp = %b, v = %b, v_exp = %b", a, b, sum_aux, c, c_exp, v,v_exp);
				$finish;		

			end 	
			
			
		end
	
	end
	
	$display("test pass");	
	
end 
	
endmodule 

