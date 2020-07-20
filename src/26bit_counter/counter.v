module counter(input clk, output [25:0] data);
wire clk;

reg [25:0] data = 0;

//-- Sensitive to rising edge
always @(posedge clk) begin
  data <= data + 1;
end
endmodule
