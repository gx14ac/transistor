# Why?
EN

I've been a NASM, C, C++, Swift, Kotlin, Golang, Rust, Dart, AWS, GCP, Firebase, terraform, etc. I've developed a lot of things (for work and pleasure) using Dart, AWS, GCP, Firebase, terraform, etc. However, I don't fully understand computers. I think there is something I can do once I understand it.
By understanding it, I can improve Japan in some small way, and I think I can save something. But I don't know the reality. We may be unhappy. But I felt a possibility and decided to take action. As Japanese people do not have many people who are aware of the possibility, it is necessary for the Japanese people who are aware of it to take action. . I feel a little bit of a sense of mission.
And when you understand, to some extent, what you will make of this world, what you can make of it, what you will feel. I want to know if I'm going to (Do you make any products for your company or do you work hard for charity? That remains to be seen.)
This project does not end with this repository. There are 5 steps to follow.

JP

私は今までNASM、C, C++, Swift, Kotlin, Golang, Rust, Dart, AWS, GCP, Firebase, terraform, etc.. を使用して多くの（仕事や趣味）開発をしてきました。しかしながら完全にコンピューターを理解していません。理解した先にできる何かがあると思っています。
理解することによって少なからず日本をよくできるはずですし、なにかを救えるはずです。だが実際の所は分かりません。不幸になるかもしれません。ですが可能性を感じたので行動することにしました。日本人は当事者意識を持つ人間が少ないので、それに気づいた日本人がやらなければなりません。少なからず使命感は感じています。
そしてある程度理解した暁に自分がこの世界のために 何を作るのか 何を作れるのか 何を感じるのか を知りたいのです。(自分の会社で何かプロダクトを作るのか、それとも慈善活動に励むのか？それはまだ分かりません)
尚、このプロジェクトはこのレポジトリで終わりません。大まかには5つのステップを踏んでいく予定です。

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

# 5STEP
1. Transitor <- here!!
2. Processor
    - ARM7 32bit CPU (verilog)
    - bootrom(assembler)
3. Compiler
    - C Compiler with Haskell
    - Linker, libc + malloc, ethernet controller, boot loader
4. OS
    - MMU, like a Unix, 
    - User Space Thread(open, read, write, close, fork, execve, wait, sleep, exit, mmap, munmap, mprotect), 
    - FAT, SD, user space program(cat, ls, shell)
5. Browser
    - TCP Stack
    - telnetd, 
    - dynamic linking
    - ANSI + Terminal = Text base Browser
