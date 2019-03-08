#include <stdio.h>

#define MAX_LENGTH 4096
struct CourseEntry {
  char name[MAX_LENGTH]; // 과목의 이름
  struct CourseEntry* prerequisites; // 선수 과목들
  int n_prerequisites; // 선수 과목의 수
  float difficulty; // 과목의 난이도
};

int main(int argc, char** argv)
{
  printf("Hello, World!\n");

  printf("You have %d arguments.\n", argc);

  for (int it = 0; it < argc; ++it) {
	  printf("\n\t%s", argv[it]);
  }

  printf("\n\nGood job!\n\n");

  return 0;
}
