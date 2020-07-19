//-- blink4.v
module blink4_tb();
    
//-- register to generate the clock signal
reg clk = 0;
    
//-- output data of the component
wire [3:0] data;
    
//-- Instantiate the component
blink4 #(.N(1))
  TOP (
    .clk(clk),
    .data(data)
  );
    
//-- generate the clock with a 2 period cycle
always #1 clk = ~clk;
    
//-- process to start
initial begin
    
  //-- file to store the results 
  $dumpfile("blink4_tb.vcd");
  $dumpvars(0, blink4_tb);
    
  # 100 $display("FIN de la simulacion");
  $finish;     
end
endmodule
