`timescale 1ns/1ps

module tb_apb_timer;
  wire [31:0] PRDATA;
  wire        timer_done;
  reg         PCLK;
  reg         PRESETn = 0;
  reg         PSEL = 0;
  reg         PENABLE = 0;
  reg         PWRITE = 0;
  reg  [7:0]  PADDR = 0;
  /* verilator lint_off UNUSEDSIGNAL*/
  reg  [31:0] PWDATA = 0;
  /* verilator lint_on UNUSEDSIGNAL*/

  apb_timer dut (
     .PRDATA(PRDATA),
    .timer_done(timer_done),
    .PCLK(PCLK),
    .PRESETn(PRESETn),
    .PSEL(PSEL),
    .PENABLE(PENABLE),
    .PWRITE(PWRITE),
    .PADDR(PADDR),
    .PWDATA(PWDATA)
     );

  initial PCLK = 0;
  always #5 PCLK = ~PCLK;

  always @(posedge timer_done)
    $display("Timer=%0t : TIMER DONE", $time);

  task apb_write(input [7:0] addr, input [31:0] data);
  begin
    @(posedge PCLK);
      PSEL = 1; PWRITE = 1; PENABLE = 0; PADDR = addr;
      PWDATA = data;
    @(posedge PCLK);
      PENABLE = 1;
    @(posedge PCLK);
      PSEL = 0; PENABLE = 0; PWRITE = 0;
  end
  endtask
  
  task apb_read(input [7:0] addr);
  begin
    @(posedge PCLK);
      PSEL = 1; PWRITE = 0; PENABLE = 0; PADDR = addr;
    @(posedge PCLK);
      PENABLE = 1;
    @(posedge PCLK);
      $display("Read [0x%0h] = %0d", addr, PRDATA);
      PSEL = 0; PENABLE = 0;
  end
  endtask

  initial begin
    $dumpfile("apb_timer.vcd");
    $dumpvars(0, tb_apb_timer);

    #10 PRESETn = 1;
    apb_write(8'h00, 5);
    apb_write(8'h04, 1);

    #80 apb_read(8'h08);
    apb_write(8'h00, 3);
    apb_write(8'h04, 1);

    #50 apb_read(8'h08);

    #50 $finish;
  end   
endmodule
