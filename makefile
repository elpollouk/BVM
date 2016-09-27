SRC_DIR=src/
OBJ_DIR=obj/
OUT_DIR=bin/
OUT_BIN=$(OUT_DIR)bvm

CC=g++
CFLAGS=-Wall -O3 -std=c++0x -Isrc
CFLAGS_DEBUG=-DDEBUG -DLOG_LEVEL=LL_INFO -g
LD=g++
LFLAGS=

CFILES:=$(shell find $(SRC_DIR) -name "*.cpp")
OFILES:=$(subst $(SRC_DIR),$(OBJ_DIR),$(CFILES:.cpp=.o))
DFILES:=$(OFILES:.o=.d)


-include $(DFILES)

all: $(OUT_BIN)

debug: CFLAGS += $(CFLAGS_DEBUG)
debug: all

run: all
	$(OUT_BIN) samples/hello.bf

test: all
	@tests/run.sh
	
clean:
	rm -rf $(OUT_DIR) $(OBJ_DIR) debuglog.txt $(shell find . -name "*~") 

$(OUT_BIN): $(OFILES)
	@mkdir -p $(OUT_DIR)
	$(LD) $(CFLAGS) $(OFILES) $(LFLAGS) -o $(OUT_BIN)

$(OBJ_DIR)%.o: $(SRC_DIR)%.cpp
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@
	$(CC) $(CFLAGS) -MM $< -MT $@ -MF $(OBJ_DIR)$*.d
	