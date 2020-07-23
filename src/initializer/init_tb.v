module init_tb();

reg clk = 0;

wire ini;

init
    INIT(
        .clk(clk),
        .ini(ini)
    );

always #2 clk = ~clk;

initial begin
$dumpfile("init_tb.vcd");
$dumpvars(0, init_tb);

# 20 $display("Simulation Started");
$finish;

end
endmodule
