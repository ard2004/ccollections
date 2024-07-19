
# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -Werror -std=c11

# Source files
SRCS = linkedList.c

# Object files
OBJS = $(SRCS:.c=.o)

# Static library
LIB = liblinkedlist.a

# Default target
all: $(LIB)

# Create the static library
$(LIB): $(OBJS)
	ar rcs $@ $^

# Compile each source file into an object file
%.o: %.c linkedList.h
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f $(OBJS) $(LIB)

# Print help message
help:
	@echo "Usage:"
	@echo "  make          Build the static library"
	@echo "  make clean    Remove all generated files"
	@echo "  make help     Print this help message"

.PHONY: all clean help

