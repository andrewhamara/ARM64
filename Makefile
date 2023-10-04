CXX = clang++
CXX_FLAGS = -Wall -Wextra -Werror -std=c++11 -pedantic -g

CPP_SOURCE = main.cpp
ASM_SOURCE = _timeTest.s

OUTPUT = time

all: $(OUTPUT)

$(OUTPUT): $(CPP_SOURCE) $(ASM_SOURCE)
	@echo "Compiling and linking..."
	$(CXX) $(CXX_FLAGS) -o $@ $^
	@echo "Done! Andrew is awesome!"

# Delete annoying files
clean:
	@echo "Cleaning up..."
	rm -f '*.o'
	rm -f $(OUTPUT)
	rm -rf $(OUTPUT).dSYM
	@echo "Cleaned! Sooooo clean now."

.PHONY: all clean
