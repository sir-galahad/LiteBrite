CC=gcc
LDFLAGS=-lncurses
DEST=/usr/lib/
INCDEST=/usr/include/

all : liblitebrite.so 

litebrite.o : litebrite.c litebrite.h
	$(CC) $(LDFLAGS) -fPIC -c litebrite.c -o litebrite.o

liblitebrite.so : litebrite.o
	$(CC) -shared litebrite.o -o liblitebrite.so $(LDFLAGS)

test : test.c
	$(CC) test.c -llitebrite -o test
install : liblitebrite.so
	cp liblitebrite.so $(DEST)
	cp litebrite.h $(INCDEST)

uninstall : 
	rm -f $(DEST)liblitebrite.so
	rm -f $(INCDEST)litebrite.h

clean :
	rm -f litebrite.o
	rm -f liblitebrite.so
	rm -f test
