//-- blink4.v
module blink4(input wire clk,           //--clock
              output wire [3:0] data);  //-- output register);
    
//-- Bits for the prescaler
parameter N = 22;
    
//-- main clock (prescalor)
wire clk_base;
    
//-- register data
reg [3:0] dout = 0;
    
//-- wire to the register
wire [3:0] din;
    
//-- Instance of the prescaler
prescaler #(.N(N))
  PRES (
    .clk_in(clk),
    .clk_out(clk_base)
  );
    
//-- Register
always @(posedge(clk_base))
  dout <= din;
    
//-- Not gate sets the input to the output
assign din = ~dout;
    
//-- output data from the register to the output of the module
assign data = dout;
    
endmodule
