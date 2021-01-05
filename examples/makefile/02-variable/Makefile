a = 1
b = 2

# 1, 2
echo-ab:
	echo $(a), $(b)
# ---

c = $(d)
d = 3

# 3, 3
echo-cd:
	echo $(c), $(d)
# ---

e := $(f) 4
f := 5 $(e)

#  4, 5 4
echo-ef:
	echo $(e), $(f)

# let's see a real project ↓↓↓

ENTRY	= main.c
CC		= gcc
CFLAGS	= -g
CFLAGS	+= -std=c90
TARGET	= target.o

# make target
# make target TARGET=target.out
target:
	$(CC) $(CFLAGS) -o $(TARGET) $(ENTRY)
