build:
	mkdir -p build && cd build && cmake .. && make -j

test: build
	./build/tests/

clean:
	rm -rf build
	rm -rf cmake-build-debug

clean-external:
	rm -rf external/*

clean-all: clean clean-external


.PHONY: test clean clean-external clean-all

