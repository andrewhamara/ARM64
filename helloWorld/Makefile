CXX = clang
CXX_FLAGS = -nostartfiles -e _start

ASM_SOURCE = helloWorld.s

OUTPUT = hello

$(OUTPUT): $(ASM_SOURCE)
	@echo  "Compiling and linking..."
	$(CXX) $(ASM_SOURCE) -o $@ $(CXX_FLAGS)
	@echo  "Done! Andrew is the goat."

clean:
	@echo  "Cleaning up!"
	rm -f  *.o
	rm -f  "$(OUTPUT)"
	rm -rf "$(OUTPUT).dSYM"
	@echo  "Cleaned! So clean now woohoo!"

.PHONY:
	$(OUTPUT) clean
