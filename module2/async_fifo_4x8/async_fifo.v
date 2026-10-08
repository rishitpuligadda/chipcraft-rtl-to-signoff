module async_fifo #(
	parameter DEPTH      = 4,
	parameter ADDR_WIDTH = 2
) (
	// Write domain
	output wire       full,
	input  wire [7:0] wr_data,
	input  wire       wr_clk,
	input  wire       wr_en,

	// Read domain
	output reg  [7:0] rd_data,
	output wire       empty,
	input  wire       rd_clk,
	input  wire       rd_en,
	input  wire       rst_n
);

	reg [7:0]          mem [0:DEPTH-1];
	reg [ADDR_WIDTH:0] wr_ptr = 0;
	reg [ADDR_WIDTH:0] rd_ptr = 0;

	always @(posedge wr_clk or negedge rst_n) begin
		if (!rst_n) begin
			wr_ptr <= 0;
		end
		else if (wr_en && !full) begin
			mem[wr_ptr[ADDR_WIDTH-1:0]] <= wr_data;
			wr_ptr <= wr_ptr + 1;
		end
	end

	always @(posedge rd_clk or negedge rst_n) begin
		if (!rst_n) begin
			rd_ptr <= 0;
			rd_data <= 8'h00;
		end
		else if (rd_en && !empty) begin
			rd_data <= mem[rd_ptr[ADDR_WIDTH-1:0]];
			rd_ptr <= rd_ptr + 1;
		end
	end

	assign full = (wr_ptr[ADDR_WIDTH] != rd_ptr[ADDR_WIDTH]) && (wr_ptr[ADDR_WIDTH-1:0] == rd_ptr[ADDR_WIDTH-1:0]);
	assign empty = (wr_ptr == rd_ptr);
endmodule
