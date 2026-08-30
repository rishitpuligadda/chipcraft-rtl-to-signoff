module downc(
  output reg [3:0] y,
  input            clk, 
  input            rst_n
);

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      y <= 4'b1111;
    end
    else begin 
      y <= y - 1;
    end
  end
endmodule
