module reginit(input wire clk, output wire [3:0] data);

parameter NP = 23;

parameter INI = 4'b1100;

wire clk_pres;

reg [3:0] dout;

wire [3:0] din;

reg sel = 0;

// クロック立ち上がり時
always @(posedge(clk_pres))
  dout <= din;

// output data
assign data = dout;

// クロック立ち上がり時に0011になる
assign din = (sel == 0) ? INI : ~dout; // din = 1100 or 0011

// クロック立ち上がり時に1になる
always @(posedge(clk_pres))
    sel <= 1;

// クロック周波数をチューニング
prescaler #(.N(NP))
  PRES (
    .clk_in(clk),
    .clk_out(clk_pres)
  );

endmodule
