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
	echo "WIP"

latex:
	pdflatex ./docs/report.tex
	mv report.pdf ./docs/  # TODO: Improve this with `pdflatex` option!
	rm report.aux report.log

md:
	mdpdf ./docs/report.md
