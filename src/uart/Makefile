NAME = echowire1

sint: $(NAME).bin

$(NAME).bin: $(NAME).pcf $(NAME).v
	yosys -p "synth_ice40 -blif $(NAME).blif" $(NAME).v
	arachne-pnr -d 1k -p $(NAME).pcf $(NAME).blif -o $(NAME).txt
	icepack $(NAME).txt $(NAME).bin