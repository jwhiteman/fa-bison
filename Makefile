doit: lexer.l parser.y
	flex -o lex.yy.c lexer.l
	bison -d parser.y
	gcc lex.yy.c parser.tab.c -o parser

clean:
	rm -f *.c *.h parser
