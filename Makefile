CC = g++
CFLAGS = --std=c++11 -g

all:
	$(CC) $(CFLAGS) src/Nekton.cpp -o Nekton -lcurl

pretty:
	uncrustify -c .uncrustify --no-backup src/*
	$(CC) $(CFLAGS) src/Nekton.cpp -o Nekton -lcurl
