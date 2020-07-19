simulator: setbit_tb.vcd

setbit_tb.vcd: setbit.v setbit_tb.v

	# compile
	iverilog -o setbit_tb.out setbit.v setbit_tb.v

	# simular
	./setbit_tb.out

	# simulate gtkwave
	gtkwave setbit_tb.vcd setbit_tb.gtkw &

clean:
	rm -f *.bin *.txt *.blif *.out *.vcd *~

.PHONY: all clean
