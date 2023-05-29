################################################################################
# Makefile for NASM project
# Author: 0xV0RT3X
################################################################################

# Project name
PROJECT_NAME = x64_nasm_project_template

# Compiler to be used
CC = nasm

# Compiler flags
CFLAGS = -f elf64

# Directories
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

# Output binary name
TARGET = $(BIN_DIR)/$(PROJECT_NAME)

# Object files, generated from source files
OBJECTS = $(patsubst $(SRC_DIR)/%.asm, $(OBJ_DIR)/%.o, $(wildcard $(SRC_DIR)/*.asm))

################################################################################

# Default target
all: $(TARGET)

# Link object files to generate the target binary
$(TARGET): $(OBJECTS)
	ld $(OBJECTS) -o $(TARGET)

# Compile each source file into an object file
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.asm
	$(CC) $(CFLAGS) -o $@ $<

# Create object and bin directories if they don't exist
$(OBJECTS) $(TARGET): | $(BIN_DIR) $(OBJ_DIR)
$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@

# Clean target
clean:
	rm -rf $(OBJECTS) $(TARGET) $(BIN_DIR) $(OBJ_DIR)

# Run target
run: $(TARGET)
	./$(TARGET)

# Help target
help:
	@echo "NASM Project Makefile:"
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  all    - Build the project (default target)"
	@echo "  run    - Run the generated binary"
	@echo "  clean  - Remove generated files"
	@echo "  help   - Show this help page"
	@echo ""

################################################################################

# Phony targets
.PHONY: all clean run help
