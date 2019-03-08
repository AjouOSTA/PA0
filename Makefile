CC=gcc -std=c99
SRC=course_sched.c
EXEC=course_sched

all:
	$(CC) -o $(EXEC) $(SRC)

run:
	./$(EXEC) ./in/everytime0.csv
	./$(EXEC) ./in/everytime1.csv
	./$(EXEC) ./in/everytime2.csv

test:
	./$(EXEC) ./in/everytime0.csv > myout0.txt
	./$(EXEC) ./in/everytime1.csv > myout1.txt
	./$(EXEC) ./in/everytime2.csv > myout2.txt
	cmp myout0.txt ./out/sample0.txt
	cmp myout1.txt ./out/sample1.txt
	cmp myout2.txt ./out/sample2.txt

latex:
	pdflatex ./docs/report.tex
	mv report.pdf ./docs/  # TODO: Improve this with `pdflatex` option!
	rm report.aux report.log

md:
	mdpdf ./docs/report.md
