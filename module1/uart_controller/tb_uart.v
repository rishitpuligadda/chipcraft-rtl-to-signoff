`timescale 1ns/1ps

module tb_uart;
  localparam CLK_PERIOD = 40;
  localparam CLKS_PER_BITS = 217;
  localparam BIT_TIME = CLK_PERIOD * CLKS_PER_BITS;

  reg        clk;
  reg        rst_n;
  reg        serial_in;

  wire [7:0] data_out;
  wire       data_ready;

  integer    rx_count;

  uart #(
    .CLKS_PER_BITS(CLKS_PER_BITS)
  ) dut (
    .clk(clk),
    .rst_n(rst_n),
    .serial_in(serial_in),
    .data_out(data_out),
    .data_ready(data_ready)
  );

  always #(CLK_PERIOD/2) clk = ~clk;

  task send_uart_frame(input [7:0] payload);
    integer i;
    begin
      serial_in = 1'b0; #(BIT_TIME);

      for (i = 0; i < 8; i = i + 1) begin
        serial_in = payload[i];
        #(BIT_TIME);
      end

      serial_in = 1'b1; #(BIT_TIME);
    end
  endtask 

  always @(posedge clk) begin
    if (data_ready) begin
      rx_count <= rx_count + 1;
      $display("RX[%0d] @ %0t ns = %h", rx_count, $time, data_out);
    end
  end

  initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    serial_in = 1'b1;
    rx_count = 0;

    #(10 * CLK_PERIOD); 
    rst_n = 1'b1;
    #(5 * CLK_PERIOD);
    send_uart_frame(8'h3C);
    #(BIT_TIME);
    send_uart_frame(8'hCC);
    #(3 * BIT_TIME);
    $display("Final data_out = %h", data_out);

    if (rx_count == 2)
      $display("PASS: Two bytes received succesfully");
    else
      $display("FAIL: Expected 2 bytes, received %0d", rx_count);

    #(5 * CLK_PERIOD);
    $finish;
  end

  initial begin
    $dumpfile("uart_transmitter.vcd");
    $dumpvars(0, tb_uart);
  end 

endmodule
