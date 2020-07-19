module setbit_tb;

// Aケーブルを定義
wire A;

setbit SB1 (
  // AケーブルをAピン(setbit.vでモジュールを定義)に接続
  .A(A)
);

initial begin
  $dumpfile("setbit_tb.vcd");
  $dumpvars(0, setbit_tb);

  # 10 if (A != 1)
        $display("ERROR! Output does not 1");
       else
        $display("Healthy");
  # 10 $finish;
end
endmodule
