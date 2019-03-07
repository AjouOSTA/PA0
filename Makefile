CC=gcc -std=c99
SRC=course_sched.c
EXEC=course_sched

all:
	$(CC) -o $(EXEC) $(SRC)

run:
	./$(EXEC)

latex:
	pdflatex ./docs/report.tex
	mv report.pdf ./docs/  # TODO: Improve this with `pdflatex` option!
	rm report.aux report.log

md:
	mdpdf ./docs/report.md
