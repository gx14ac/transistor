module reginit_tb();

reg clk = 0;

wire [3:0] data;

reginit #(.NP(1))
  dut(
      .clk(clk),
      .data(data)
  );

// 1秒毎に実行
always #1 clk = ~clk;

initial begin
    $dumpfile("reginit_tb.vcd");
    $dumpvars(0, reginit_tb);
    
    # 30 $display("finshed simulation");
    $finish;

end

endmodule
