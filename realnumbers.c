#include <stdio.h>
#include <ctype.h>
#include <string.h>

// Function to check if string is a real number
int isRealNumber(char str[]) {
    int dotCount = 0;

    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == '.') {
            dotCount++;
        } else if (!isdigit(str[i])) {
            return 0;  // Not a digit or dot
        }
    }

    // Must contain exactly one dot and not at start or end
    if (dotCount == 1 && str[0] != '.' && str[strlen(str) - 1] != '.')
        return 1;

    return 0;
}

int main() {
    char input[100];

    printf("Enter a string: ");
    scanf("%s", input);

    if (isRealNumber(input)) {
        printf("%s is a Real Number\n", input);
    } else {
        printf("%s is NOT a Real Number\n", input);
    }

    return 0;
}
