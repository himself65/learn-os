all: compile

compile:
	nasm -f elf64 -o target.o main.nasm
	ld target.o -o target
