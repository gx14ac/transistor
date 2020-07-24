NAME = mux2
DEP = prescaler.v

simulator: $(NAME)_tb.vcd
	    

$(NAME)_tb.vcd: $(NAME).v $(DEP) $(NAME)_tb.v

	iverilog $^ -o $(NAME)_tb.out

	./$(NAME)_tb.out

	gtkwave $@ $(NAME)_tb.gtkw &

clean:
	    rm -f *.bin *.txt *.blif *.out *.vcd *~

.PHONY: all clean

