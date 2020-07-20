テストベンチには、Nビットプリスケーラ（デフォルトではN = 2）、クロック信号ジェネレータ、およびクロックのすべての立ち下がりエッジを実行するチェックブロックを配置します。このブロックには、各更新を増加させる内部レジスターがあり、その最上位ビットはclk_outに対してチェックされ、後者が適切に動作していることを確認します。すべてを初期化し、シミュレーションの終了を待機する4番目のブロックもあります。

module prescaler_tb();

// N bits of tested prescaler
parameter N = 2;

// clock register
reg clk = 0;

// prescaler output;
wire clk_out;

// checking prescaler register
reg [N-1:0] counter_check = 0;


// initialize N bit prescaler
prescaler #(.N(N))
  Pres1(
    .clk_in(clk),
    .clk_out(clk_out)
  );

// clock generator
always #1 clk = ~clk;

always @(negedge clk) begin

  counter_check = counter_check + 1;

  if (counter_check[N-1] != clk_out) begin
    $display("ERROR. Prescaler is malfunctioning");
    $display("Clk out: %d, counter_check[2]: %d", 
              clk_out, counter_check[N-1]);
  end
end
