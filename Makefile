build: include/MyCppLibrary
	mkdir -p build && cd build && cmake .. && $(MAKE)

test: build tests
	./build/tests/MyLib_test

clean:
	rm -rf build
	rm -rf cmake-build-debug

clean-external:
	rm -rf external/*

clean-all: clean clean-external


.PHONY: test clean clean-external clean-all

