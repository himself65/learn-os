CC			:= gcc
EXAMPLE-DIR	:= ./examples
DIRS		:= \
	$(EXAMPLE-DIR)/makefile/01-basic

all: test-example

test-example:
	$(foreach DIR,$(DIRS), @cd $(DIR); make)
