build: MyCppLibrary
	mkdir -p build && cd build && cmake .. && make -j 1

test: build tests
	./build/tests/MyCppProject_test

clean:
	rm -rf build
	rm -rf cmake-build-debug

clean-external:
	rm -rf external/*

clean-all: clean clean-external


.PHONY: test clean clean-external clean-all

