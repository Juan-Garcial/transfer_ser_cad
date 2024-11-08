module lods_12_pre (
    input [10:0] a,
    input [10:0] b,	
    output [3:0] c,
    output v
);


logic [11:0] carry_aux;

pre_sum pre_sum_comp_0 (
      .a(a),
      .b(b),
      .c(carry_aux)
  );

lods_12 lods_12_comp_0 (
      .a(carry_aux),
      .c(c),
      .v(v)
);



endmodule



