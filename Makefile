CC			:= gcc
EXAMPLE-DIR	:= ./examples
DIRS		:= \
	$(EXAMPLE-DIR)/makefile/01-hello-world

all: test-example

test-example:
	$(foreach DIR,$(DIRS), @cd $(DIR); make)
