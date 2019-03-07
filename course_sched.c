#include <stdio.h>

#define MAX_LENGTH 4096
struct CourseEntry {
  char name[MAX_LENGTH]; // 과목의 이름
  struct CourseEntry* prerequisites; // 선수 과목들
  int n_prerequisites; // 선수 과목의 수
  float difficulty; // 과목의 난이도
};

int main()
{
  printf("Hello, World!\n");

  return 0;
}
