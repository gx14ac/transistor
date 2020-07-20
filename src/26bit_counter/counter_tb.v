module counter_tb();
 
// clock register
reg clk = 0;
 
// output counter data
wire [25:0] data;

// counter checker register
reg [25:0] counter_check = 1;

// initialize counter
counter C1(
  .clk(clk),
  .data(data)
);

// counter generator
always #1 clk = ~clk;
 
// 各立ち上がりエッジでカウンターの出力をチェックする
always @(negedge clk) begin
  if (counter_check != data)
    $display("-->ERROR!. Expected: %d. Read: %d", counter_check, data);
  // 立ち上がり時に正しい値であればインクリメント  
  counter_check <= counter_check + 1;
end
    
initial begin
    
  $dumpfile("counter_tb.vcd");
  $dumpvars(0, counter_tb);
  
  // check counter initialize
  # 0.5 if (data != 0)
          $display("ERROR! Counter is not 0!");
        else
          $display("Counter initialized. OK.");

  # 99 $display("END of simulation");
  # 100 $finish;
 end
 endmodule
