#include "std_lib_util.h"

void *memset(void *dest, int c, int n)
{
    char *p = dest;
    while (n-- > 0) {
        *(char*)dest++ = c;
    }
    return p;
}


char *strncpy(char *dst, const char *src, int n)
{
    int i;
    for (i = 0; i < n && src[i]; i++) {
        dst[i] = src[i];
    }
    for (; i < n; i++) {
        dst[i] = 0;
    }
    return dst;
}


int len_of_str(const char *p_string)
{
    unsigned int length = 0;

    while(*p_string++ != 0) {
        length++;
    }
    return length;
}
