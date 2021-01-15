.PHONY: all
all: compile

.PHONY: compile
compile:
	@x86_64-linux-gnu-gcc 1.c -o 1-shared.out
	@x86_64-linux-gnu-gcc 1.c -o 1-static.out -static
	@gcc -c SimpleSection.c -o SimpleSection.o

.PHONY: clean
clean:
	rm ./*.out
	rm ./*.o

.PHONY: log
log: compile
	file ./1-shared.out
	file ./1-static.out
	file ./SimpleSection.o
