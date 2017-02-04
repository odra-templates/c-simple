IDIR =./include
SRCIDR=./src
CC=gcc
OCFLAGS=-c -I$(IDIR)
LDIR =./lib
OBJDIR=$(SRCIDR)/obj
DISTDIR=./dist


hello:
	$(CC) -o $(OBJDIR)/hello.o $(SRCIDR)/hello.c $(OCFLAGS)

main:
	$(CC) -o $(DISTDIR)/hello $(SRCIDR)/main.c $(OBJDIR)/hello.o

.PHONY: clean
clean:
	rm src/obj/*
	rm dist/*

default: hello main

.DEFAULT_GOAL := default
