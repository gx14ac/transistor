module mux2_tb();

reg clk = 0;

wire [3:0] data;

mux2 #(.NP(1))
  dut(
    .clk(clk),
    .data(data)
  );

always #1 clk = ~clk;

initial begin
  $dumpfile("mux2_tb.vcd");
  $dumpvars(0, mux2_tb);

  # 30 $display("Start Simulation");
  $finish;
end

endmodule
