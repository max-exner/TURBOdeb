# ------------------------------------------------
# Makefile
#
# Author: M.Exner
# Date  : 2019-03-25
#
# Changelog :
#   2019-03-25 - first stabel version
#
# ------------------------------------------------

# project name (generate executable with this name)
TARGET   = TURBOdeb
# Choose compiler
CC=g++
# CFLAGS will be the options passed to the compiler
CFLAGS= -c -Wall -std=c++17

#Define directories
SRCDIR   = src/
OBJDIR   = obj/
BINDIR   = bin/

#Define source files
SCR = $(wildcard $(SRCDIR)*.cpp)
#Create Object Variable in dependency of the SCR
OBJ	= $(SCR:$(SRCDIR)%.cpp=$(OBJDIR)%.o)
#Create BIN Variable
BIN=$(addprefix $(BINDIR),$(TARGET))

all: $(SCR) $(BIN)

#$@ is Makro for $(BIN)
$(BIN): $(OBJ)
	echo $(SCR)
	echo $(OBJ)
	$(CC) $(OBJ) -o $@
	echo "Compiled successfully!"

$(OBJDIR)%.o: $(SRCDIR)%.cpp
	$(CC) $(CFLAGS) $< -o $@
	echo "Linked successfully!"

clean:
	rm -f $(OBJ)
	rm -f $(BIN)
	echo "Clean was successfully!"