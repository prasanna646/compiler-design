#include <stdio.h>
#include <string.h>

char input[100];
int i = 0;

int S();
int A();
int match(char c);

int match(char c) {
    if (input[i] == c) {
        i++;
        return 1;
    }
    return 0;
}

int A() {
    int back = i;
    if (match('b')) {
        if (match('a')) {
            return 1;
        }
    }
    i = back;   // backtrack
    if (match('a')) {
        return 1;
    }
    i = back;
    return 0;
}

int S() {
    int back = i;
    if (match('c')) {
        if (A()) {
            if (match('d')) {
                return 1;
            }
        }
    }
    i = back;
    return 0;
}

int main() {
    printf("Enter a string: ");
    scanf("%s", input);
    i = 0;
    if (S() && match('$') && input[i] == '\0') {
        printf("\nSuccessfully Parsed\n");
    } else {
        printf("\nInvalid\n");
    }
    return 0;
}



/*S → c A d  
A → b a | a
Input:-cad
output:-Successfully Parsed
Input2:-cbad
output:-Successfully Parsed
Input3:-cd
output:-Invalid*/
