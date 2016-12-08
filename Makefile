LEX = /usr/bin/flex
CFLAGS = -g
LDLIBS = -lfl
CC = /usr/bin/gcc
YACC = /usr/bin/yacc

plisp: y.tab.c lex.yy.c
	$(CC) -o plisp y.tab.c lex.yy.c -ly -ll
	rm lex.yy.c y.tab.c  y.tab.h
y.tab.c:
	yacc -d plisp.y
lex.yy.c:
	flex plisp.l
