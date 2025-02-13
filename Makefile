#!/usr/bin/make -f

all: cramfsswap strip
debian: cramfsswap

cramfsswap: cramfsswap.c
	gcc -std=c89 -Wall -g -O -o cramfsswap -lz cramfsswap.c

strip:
	strip cramfsswap

install: cramfsswap
	install cramfsswap $(DESTDIR)/usr/bin
	
clean:	
	rm -f cramfsswap
