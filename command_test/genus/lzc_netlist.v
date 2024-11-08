
// Generated by Cadence Genus(TM) Synthesis Solution 21.10-p002_1
// Generated on: Oct  3 2024 21:09:21 UTC (Oct  3 2024 21:09:21 UTC)

// Verification Directory fv/lzc_8 

module lzc_8(a, c, v);
  input [7:0] a;
  output [2:0] c;
  output v;
  wire [7:0] a;
  wire [2:0] c;
  wire v;
  wire n_0, n_1, n_2, n_4, n_5;
  sky130_fd_sc_hd__a211o_1 g160__2398(.A1 (n_5), .A2 (a[5]), .B1
       (a[7]), .C1 (n_4), .X (c[0]));
  sky130_fd_sc_hd__o21ai_0 g162__5107(.A1 (n_2), .A2 (c[2]), .B1 (n_5),
       .Y (c[1]));
  sky130_fd_sc_hd__nor2_1 g161__6260(.A (c[2]), .B (n_1), .Y (n_4));
  sky130_fd_sc_hd__or4b_2 g164__4319(.A (a[1]), .B (a[0]), .C (c[2]),
       .D_N (n_2), .X (v));
  sky130_fd_sc_hd__a21oi_1 g163__8428(.A1 (n_2), .A2 (a[1]), .B1
       (a[3]), .Y (n_1));
  sky130_fd_sc_hd__nand2_1 g165__5526(.A (n_5), .B (n_0), .Y (c[2]));
  sky130_fd_sc_hd__nor2_1 g167__6783(.A (a[5]), .B (a[4]), .Y (n_0));
  sky130_fd_sc_hd__nor2_1 g168__3680(.A (a[3]), .B (a[2]), .Y (n_2));
  sky130_fd_sc_hd__nor2_1 g166__1617(.A (a[7]), .B (a[6]), .Y (n_5));
endmodule

