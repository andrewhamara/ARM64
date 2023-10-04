#include <iostream>
#include <cstdlib>

extern "C" void timeTest(int iterations);

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << "[number of iterations]" << std::endl;
    }
    
    int x = std::atoi(argv[1]);
    std::cout << x << std::endl;
    timeTest(x);
    return 0;
}
