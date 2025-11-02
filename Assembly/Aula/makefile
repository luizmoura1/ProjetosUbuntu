# Makefile para Assembly 32 bits
# Organização moderna: variáveis "fixas" em MAIÚSCULAS, variáveis "parametrizáveis" em minúsculas, e com include path

# Diretórios
SRC_DIR = src
BIN_DIR = bin

# Fonte sem extensão (ex: hello1 -> src/hello1.asm)
nome ?= hello1

# Caminhos derivados
SRC = $(SRC_DIR)/$(nome).asm
OBJ = $(BIN_DIR)/$(nome).o
EXE = $(BIN_DIR)/$(nome)

# Regra padrão (gera o executável)
all: $(EXE)

# Montagem e linkagem
$(EXE): $(OBJ)
	ld -s -m elf_i386 $(OBJ) -o $(EXE)
	rm -f $(OBJ)

$(OBJ): $(SRC)
	nasm -f elf32 -I $(SRC_DIR) $(SRC) -o $(OBJ)

# Limpeza
clean:
	rm -f $(BIN_DIR)/*.o $(BIN_DIR)/*

