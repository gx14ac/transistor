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
    $display("ERROR! counter: %d, data: %d", counter_check, data);
  
  counter_check <= counter_check + 1;
end

initial begin

  $dumpfile("counter_tb.vcd");
  $dumpvars(0, counter_tb);

  # 0.5 if(data != 0)
	  $display("ERROR! counter is not 0");
	else
	  $display("Complete Initialization.");

   # 99 $display("Complete Initialization.");
   # 100 $finish;
end
endmodule
