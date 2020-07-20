module counter_tb();
    
reg clk = 0;
    
wire [25:0] data;

reg [25:0] counter_check = 1;
    
counter C1(
  .clk(clk),
  .data(data)
);
    
always #1 clk = ~clk;
    
always @(negedge clk) begin
  if (counter_check != data)
    $display("-->ERROR!. Expected: %d. Read: %d",counter_check, data);
    
  counter_check <= counter_check + 1;
end
    
initial begin
    
  $dumpfile("counter_tb.vcd");
  $dumpvars(0, counter_tb);
    
  # 0.5 if (data != 0)
          $display("ERROR! Counter is not 0!");
        else
          $display("Counter initialized. OK.");

  # 99 $display("END of simulation");
  # 100 $finish;
 end
 endmodule
