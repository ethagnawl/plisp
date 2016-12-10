LEX = /usr/bin/flex
CFLAGS = -g
LDLIBS = -lfl
CC = /usr/bin/gcc
YACC = /usr/bin/yacc

all: plisp

plisp: lex.yy.c y.tab.c
	$(CC) -o plisp y.tab.c lex.yy.c -ly -ll
	rm -f lex.yy.c y.tab.*

y.tab.c:
	yacc -d plisp.y

lex.yy.c:
	flex plisp.l
