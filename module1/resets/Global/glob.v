module glob (
  output reg q1, q2,
  input      d1, d2,
  input      clk,
  input      rst
);
  always @(posedge clk) begin
    if (rst) begin
      q1 <= 1'b0;
      q2 <= 1'b0;
    end
    else begin
      q1 <= d1;
      q2 <= d2;
    end
  end
endmodule
