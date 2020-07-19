NAME = blink4
DEPS = prescaler.v

simulator: $(NAME)_tb.vcd

$(NAME)_tb.vcd: $(NAME).v $(DEPS) $(NAME)_tb.v
	
	# compile
	iverilog $^ -o $(NAME)_tb.out
	
	# simulator
	./$(NAME)_tb.out
	
	# simulate gtkwave
	gtkwave $@ $(NAME)_tb.gtkw &

clean:
	rm -f *.bin *.txt *.blif *.out *.vcd *~

.PHONY: all clean

