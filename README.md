This is a simple program written to test the speed of looping in the Apple Silicon ARM64 assembly language.

The program calls the assembly from a C++ file given a command line argument integer that determines how
many times the assembly loop will run.

This program was made to race against it's C counterpart to settle a debate at work. The C counterpart is yet to be determined.

I tested this on a 2020 MacBook Pro with an M1 chip. I can't guarantee that it will work on anything else, but you can try by cloning this repo and building by running the "make" command. If it compiles, you will be able to run the executable with the following: "./time x", where x is the number of times you want the program to loop. If you want to time it, you can run "time ./time x". 
