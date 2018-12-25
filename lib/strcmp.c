// strcmp.c: Compare strings.

int strcmp(const char* s1, const char* s2) {
  // Return 0 when |s1| and |s2| are identical.
  while(*s1 && (*s1 == *s2)) {
    s1++;
    s2++;
  }
  return *(const unsigned char*)s1 - *(const unsigned char*)s2;
}
