# PA0: 수강 계획 짜기

아주대 19학번으로 입학한 Mr. Ko는 청운의 꿈을 안고 성공적인 대학 생활을 하기 위한 수강 계획을 짜기로 했다. 아주대학교 요람과 에브리타임을 연 Mr. Ko는 각 과목을 아래와 같이 정리했다.

    #define MAX_LENGTH 4096
    struct CourseEntry {
      char name[MAX_LENGTH]; // 과목의 이름
      struct CourseEntry* prerequisites; // 선수 과목들
      int n_prerequisites; // 선수 과목의 수
      float difficulty; // 과목의 난이도
    };

Mr. Ko는 빡센 과목을 먼저 끝내버리고 유학 준비를 하기 위해 난이도가 높은 과목부터 수강하려고 한다. 이때 Mr. Ko의 수강 계획을 출력하는 프로그램을 작성하시오.

## Input

입력은 아주대학교 요람과 에브리타임 강의평가 두 가지로 나뉜다. 두 파일은 csv 형태로 존재한다.

- 아주대학교 요람(*in/database.csv*)의 예시

요람은 한 줄에 한 과목으로 구성되며, 각 줄은  `과목 명, 선수 과목의 수, [선수 과목 0, 선수 과목 1, 선수 과목 2, ...]` 과 같은 포맷으로 구성된다.

    Computer Programming, 0
    Discrete Mathematics, 0
    Digital Systems, 0
    Data Structures, 2, Computer Programming, Discrete Mathematics
    Computer Architecture, 2, Digital Systems, Data Structures
    Operating Systems, 1, Computer Architecture

- 에브리타임 강의평가(*in/everytime{i}.csv*)

에브리타임 강의평가 역시 한 줄에 한 과목으로 구성되며, 각 줄은 `과목 명, 난이도` 로 구성된다.

    Computer Programming, 1.2
    Discrete Mathematics, 1.1
    Data Structures, 2.563
    Computer Architectures, 4.778
    Operating Systems, 4.8788

강의 평가가 없는 과목은 `5`점으로 가정한다.

에브리타임 강의평가 파일인 `everytime{i}.csv`는 `i`가 0부터 2까지, 즉 `everytime0.csv`, `everytime1.csv`, 그리고 `everytime2.csv` 로 구성되어 있으며, `i`가 높을 수록 더 많은 평가가 기록되어 있다.

## Output

출력은 아래와 같은 기준으로 과목들을 정렬하여 출력한다.

1. 선수 과목
2. 난이도
3. 알파벳 순서

위의 입력 예에 따르면, 출력은 아래와 같이 나와야 한다.

    Digital Systems, Computer Programming, Discrete Mathematics, Data Structures, Computer Architecture, Operating Systems.

예시 출력은 *out/* 디렉토리에 있으니 참고.

## References

[Topological sorting](https://en.wikipedia.org/wiki/Topological_sorting)

[과제 시작하기](https://github.com/AjouOSTA/PA0/blob/master/GETTING_STARTED.md)

[리포트 가이드](https://github.com/AjouOSTA/PA0/blob/master/REPORT-GUIDE.md)
