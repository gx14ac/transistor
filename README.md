# Why
I've developed (in practice and as a hobby) NASM, C, mobile apps, server side, etc. There are times when I Lately I've been getting quite interested in low layers
When I finish this project, I expect to mainly do Pwn and Reverse Engineering (to be able to do iOS Kerel Exploit, Kernel Exploit, Android Exploit, etc. on my own) This is a complete curiosity!

# Setup

## for Mac
`brew install verilator`

## for Ubuntu
`sudo apt-get install git make autoconf g++ flex bison`

`sudo apt-get install libfl2  # Ubuntu only (ignore if gives error)`

`sudo apt-get install libfl-dev  # Ubuntu only (ignore if gives error)`

`git clone https://github.com/verilator/verilator`

`cd verilator`

`autoconf`

`./configure`

`make`

`sudo make install`

# Doc
- https://zipcpu.com/blog/2017/06/21/looking-at-verilator.html
- https://www.veripool.org/projects/verilator/wiki/Manual-verilator#EXAMPLE-C-EXECUTION
- https://zipcpu.com/blog/2017/06/21/looking-at-verilator.html

# ⚠️caution
I'm currently using Mac OS.
Keep in mind that we will be updating the environment to Linux(Ubuntu or Arch) soon (the content of the README may change)
