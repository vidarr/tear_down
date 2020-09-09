.phony: all
all: build build/tear_down_test

build:
	mkdir build


build/tear_down_test: build/tear_down.o build/tear_down_test.o
	gcc -o $@ $?

build/%.o: src/%.c src/tear_down.h
	gcc -o $@ -c $<

.phony: clean
clean:
	[ ! -e build ] || rm -r build
