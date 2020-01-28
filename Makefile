# flex makefile.

json: main.o lex.yy.o
	cc -o json main.o lex.yy.o

main.o: main.c json.h
	cc -c -g -DLEX main.c

lex.yy.o: lex.yy.c json.h
	cc -c -g lex.yy.c

lex.yy.c: json.l
	flex json.l

clean:
	rm lex.yy.c lex.yy.o json main.o