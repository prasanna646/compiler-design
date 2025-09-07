#include <stdio.h>
#include <ctype.h>
#include <string.h>

// Function to check if string is an identifier
int isIdentifier(char str[]) {
    // First character must be letter or underscore
    if (!(isalpha(str[0]) || str[0] == '_'))
        return 0;

    // Remaining characters can be letters, digits, or underscore
    for (int i = 1; str[i] != '\0'; i++) {
        if (!(isalnum(str[i]) || str[i] == '_'))
            return 0;
    }
    return 1;
}

int main() {
    char input[100];

    printf("Enter a string: ");
    scanf("%s", input);

    if (isIdentifier(input)) {
        printf("%s is a valid Identifier\n", input);
    } else {
        printf("%s is NOT a valid Identifier\n", input);
    }

    return 0;
}
