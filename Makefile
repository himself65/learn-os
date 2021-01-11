CC			:= gcc
EXAMPLE-DIR	:= $(CURDIR)/examples
DIRS		:= \
	$(EXAMPLE-DIR)/makefile/01-hello-world \
	$(EXAMPLE-DIR)/makefile/02-variable \
	$(EXAMPLE-DIR)/asm/01

all: test-example

test-example:
	for DIR in $(DIRS) ; do	\
		cd $$DIR;			\
		make;				\
	done

clean:
	for DIR in $(DIRS) ; do	\
		cd $$DIR;			\
		make clean;			\
	done
