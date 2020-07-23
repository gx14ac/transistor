module shift4_tb();

reg clk = 0;

wire [3:0] data;

shift4 #(.NP(1), .INI(4'b0001))
  C1(
    .clk(clk),
    .data(data)
  );

always #1 clk = ~clk;

initial begin
  $dumpfile("shift4_tb.vcd");
  $dumpvars(0, shift4_tb);

  # 30 $display("Start Simulator");
  $finish;
end

endmodule
