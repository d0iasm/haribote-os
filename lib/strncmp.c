// strncmp.c: Compare strings with N characters from the top.

int strncmp(const char* s1, const char* s2, const int n) {
  // Return 0 when the top |n| characters of |s1| and |s2| are identical.
  for (int i = 0; i < n; i++) {
    if (s1[i] == 0x00 && s2[i] == 0x00) return 0;
    if (s1[i] == 0x00 || s2[i] == 0x00) return 1;
    if (s1[i] != s2[i]) return 1;
  }
  return 0;
}
