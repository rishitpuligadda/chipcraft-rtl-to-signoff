module domain_reset (
  output reg q1, 
  output reg q2,
  input      d1,
  input      d2,
  input      clk1, 
  input      clk2,
  input      rst1,
  input      rst2
);
  always @(posedge clk1) begin
    if (rst1) 
      q1 <= 1'b0;
    else
      q1 <= d1;
  end

  always @(posedge clk2) begin
    if (rst2) 
      q2 <= 1'b0;
    else
      q2 <= d2;
  end
endmodule
