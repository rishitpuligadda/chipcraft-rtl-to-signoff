`timescale 1ns/1ps

module uart
#(
  parameter integer CLKS_PER_BITS = 217
 )
(
  output reg [7:0] data_out,
  output reg       data_ready,
  input            serial_in,
  input            clk,
  input            rst_n
);

  localparam IDLE  = 2'd0;
  localparam START = 2'd1;
  localparam RECV  = 2'd2;
  localparam STOP  = 2'd3;

  localparam [7:0] HALF_BIT = 8'(CLKS_PER_BITS >> 1);
  localparam [7:0] FULL_BIT = 8'(CLKS_PER_BITS - 1);

  reg [1:0] state;
  reg [7:0] clk_count;
  reg [2:0] bit_index;
  reg [7:0] data_buf;

  reg rx_meta;
  reg rx_sync;

  always @(posedge clk) begin
    rx_meta <= serial_in;
    rx_sync <= rx_meta; 
  end

  always @(posedge clk) begin
    if (!rst_n) begin
      state      <= IDLE;
      clk_count  <= 8'd0;
      bit_index  <= 3'd0;
      data_buf   <= 8'd0;
      data_out   <= 8'd0;
      data_ready <= 1'd0;
    end
    
    else begin
      data_ready <= 1'b0;

      case(state)
        IDLE: begin
          clk_count <= 8'd0;
          bit_index <= 3'd0;

          if (!rx_sync) 
            state <= START;
        end

        START: begin
          //Basically check the bit value at half the bit period
          if (clk_count == HALF_BIT) begin
            clk_count <= 8'd0;
            //Still 0 so go to receive mode
            if (!rx_sync) 
              state <= RECV;
            //Go back to being idle
            else 
              state <= IDLE;
          end
          else 
            clk_count <= clk_count + 1'b1;
        end

        RECV: begin
          if (clk_count == FULL_BIT) begin
            clk_count <= 8'd0;

            data_buf[bit_index] <= rx_sync;

            if (bit_index == 3'd7) begin
              bit_index <= 3'd0;
              state <= STOP;
            end
            else 
              bit_index <= bit_index + 1;
          end
          else 
            clk_count <= clk_count + 1;
        end 

        STOP: begin
          if (clk_count == FULL_BIT) begin
            clk_count <= 8'd0;
            data_out  <= data_buf;
            data_ready <= 1'b1;
            state <= IDLE;
          end
          else 
            clk_count <= clk_count + 1'b1;
        end
        
        default: 
          state <= IDLE;
      endcase
    end
  end
endmodule
