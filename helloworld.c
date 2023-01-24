#include <stdio.h>

int main(int argc, char** argv) {
    
    printf("%d\n", 3);
    if (argc > 1) {
        return 1;
    } else {
        return 2;
    }
    
}