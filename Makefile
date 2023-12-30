doit: simple_lexer.l simple_parser.y
	flex -o lex.yy.c simple_lexer.l
	bison -d simple_parser.y
	gcc lex.yy.c simple_parser.tab.c -o simple_parser

clean:
	rm -f *.c *.h simple_parser
