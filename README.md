# What is FPGA
EN

FPGA stands for field programmable gate array, a chipset that contains a lookup table that can be programmed to allow digital circuitry to be implemented (in essence, understandably, it can also be used to build a CPU)
Everyone knows the main vendor `Intel`.
Tumor development languages include `VHDL` and `Verilog`. Verilog is similar to C and VHDL is similar to the Ada format.
FPGAs are not (usually) programmed in a high-level language such as C / C++, Python, etc., but are simulated by Vivado HLS, Intel HLS compilers, etc. by spitting out the `#pragma` annotated C++.
We will use `Verilog` in this project because we chose `verilog`. Because we use the `Verilator` (Hardware Simulator)

JP

FPGAはフィールドプログラマブルゲートアレイの略であり、デジタル回路を実装できるようにプログラムできるルックアップテーブルを含むチップセット（要するに理解するとCPUを構築することも可能である）
主なベンダーはみんなが知ってる `Intel`
腫瘍開発言語は `VHDL` や `Verilog` があげられます。. VerilogはCに似ているしVHDLはAdaのフォーマットに似ているのが特徴
FPGAは（通常）C / C++, Pythonなどの高水準言語でプログラムせずに、Vivado HLSやIntel HLSコンパイラなどが`#pragma`注釈付きC++を吐き出し、それらをシュミレートします
本プロジェクトでは`Verilog`を使っていきます。verilogを選択した理由は`Verilator`(Hardware Simulator)を使うからです

# What to do
EN

- Simple LED lighting
- UART implementation

JP

- 簡単なLED点灯
- UARTの実装

# Setup
EN

This time, instead of running it on actual hardware, we'll run it on a simulator!
If you want to run it on your hardware, I recommend the following boards
- DE10-lite with Intel MAX 10 https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=1021
- DE10-Nano with Intel Cyclone V FPGA https://www.terasic.com.tw/cgi-bin/page/archive.pl? Language=English&No=1046
- Arty A7 using Xilinx's Artix-7 FPGA https://store.digilentinc.com/arty-a7-artix-7-fpga- development-board-for-makers-and-hobbyists/
- https://www.latticesemi.com/icestick

⚠️ caution
Cyclone V & Intel MAX 10 has an ARM core embedded in it, but Artix-7 does not have an ARM core I'm not here

If you want a cheaper board, click here ◉

https://tinyfpga.com/

JP

今回は実際のハードウェアの上で実行するのではなく、シュミレーターの上で実行します
ハードの上で実行したい人は以下のボードがオススメです
- DE10-lite Intel MAX 10 ベース https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=1021
- DE10-Nano Intel Cyclone V FPGA ベース DE10-Nano https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=1046
- Arty A7 https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/
- https://www.latticesemi.com/icestick

⚠️ 注意
Cyclone VとIntel MAX 10にはARMコアが組み込まれていますがArtix-7には組み込まれていません 

もっと安価なボードが欲しい人はこちらから◉

https://tinyfpga.com/ 

## for Mac
```shell
$ brew install verilator
$ brew install gtkwave
```

## for Ubuntu
```shell
Installing verilator

$ sudo apt-get install git make autoconf g++ flex bison

$ sudo apt-get install libfl2  # Ubuntu only (ignore if gives error)

$ sudo apt-get install libfl-dev  # Ubuntu only (ignore if gives error)

$ git clone https://github.com/verilator/verilator

$ cd verilator

$ autoconf

$ ./configure 

$ make

$ sudo make install
```

# Doc
- https://zipcpu.com/blog/2017/06/21/looking-at-verilator.html
- https://www.veripool.org/projects/verilator/wiki/Manual-verilator#EXAMPLE-C-EXECUTION
- https://zipcpu.com/blog/2017/06/21/looking-at-verilator.html

# ⚠️caution
I'm currently using Mac OS.
Keep in mind that we will be updating the environment to Linux(Ubuntu or Arch) soon (the content of the README may change)
