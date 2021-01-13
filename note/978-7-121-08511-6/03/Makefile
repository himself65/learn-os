.PHONY: all
all: compile

.PHONY: compile
compile:
	@x86_64-linux-gnu-gcc 1.c -o 1-shared.out
	@x86_64-linux-gnu-gcc 1.c -o 1-static.out -static

.PHONY: clean
clean:
	rm ./*.out

.PHONY: log
log: compile
	file ./1-shared.out
	file ./1-static.out
