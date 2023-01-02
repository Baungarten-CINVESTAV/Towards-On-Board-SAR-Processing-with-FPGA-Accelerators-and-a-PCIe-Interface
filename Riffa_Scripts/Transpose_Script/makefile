CC=gcc
#CFLAGS=-I. -Wall -FMA -lfftw3 (double p.) -xW

CFLAGS = -I.  -g  -march=native -ftree-vectorize -O2 -mfma  -std=c99 -ffast-math -lriffa

SRCS = main.c
OBJS = main.o
LIBS = -lm
DEPS = main.h
EXEC = vecfft


all:$(EXEC)
	$(CC) $(SRCS) $(CFLAGS) $(LIBS) -o $(EXEC) 

#all:$(OBJS)
#	$(CC) $(SRCS) -o $(OBJS) $(CFLAGS) $(LIBS)
	
$(EXEC): $(SRCS) 
	$(CC) $(SRCS) $(CFLAGS) $(LIBS) -o $@

run:
	./$(EXEC) 
	
.PHONY: clean

clean:
	rm -rf $(OBJS) $(EXEC)