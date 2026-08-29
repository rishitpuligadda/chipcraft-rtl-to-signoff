module mux41_dataflow(
  output y,
  input s0, s1,
  input i0, i1, i2, i3
);
  assign y = s0 ? (s1 ? i3 : i1) : (s1 ? i2 : i0);
endmodule
