`timescale 1ns/1ps

module apb_timer #(
  parameter WIDTH = 8
  )(
  output reg  [31:0] PRDATA,
  output reg         timer_done,
  input  wire        PCLK,
  input  wire        PRESETn,
  input  wire        PSEL,
  input  wire        PENABLE,
  input  wire        PWRITE,
  input  wire [7:0]  PADDR,
  /* verilator lint_off UNUSEDSIGNAL */
  input  wire [31:0] PWDATA
  /* verilator lint_on UNUSEDSIGNAL */
  );
  reg [WIDTH-1:0] load_val;
  reg [WIDTH-1:0] count;
  reg             running;

  always @(posedge PCLK or negedge PRESETn) begin
    if (!PRESETn) begin
      load_val <= 0;
      running  <= 0;
    end
    else if (PSEL && PENABLE && PWRITE) begin
      case (PADDR) 
        8'h00: load_val <= PWDATA[WIDTH-1:0];
        8'h04: begin running  <= PWDATA[0];
               if (PWDATA[0]) count <= load_val;
        end
        default : ;
      endcase
    end
  end

  always @(*) begin
    PRDATA = 32'h0;
    if (PSEL && !PWRITE) begin
      case (PADDR)
        8'h00: PRDATA = {{ (32-WIDTH){1'b0}}, load_val};
        8'h04: PRDATA = {31'b0, running};
        8'h08: PRDATA = {31'b0, timer_done};
        default: PRDATA = 32'h0;
      endcase
    end   
  end
  
  always @(posedge PCLK or negedge PRESETn) begin
    if (!PRESETn) begin
      count      <= 0;
      timer_done <= 0;
    end
    else if (running) begin
      if (count == 0) begin
        count      <= load_val;
        timer_done <= 1;
        running    <= 0;
      end 
      else begin
        count      <= count - 1;
        timer_done <= 0;
      end 
    end
  end 
endmodule
