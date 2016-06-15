#include <stdio.h>

int main() {
    /* my first program in C */
    printf("Hello, World! \n");

    const char *text = "Write this to the file";

    FILE *f = fopen("file.txt", "w");
    fprintf(f, "Some text: %s\n", text);
    fprintf(f, text);
    fclose(f);

    return 0;
}
