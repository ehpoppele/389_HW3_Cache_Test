CXX=g++-8
CXXFLAGS=-Wall -Wextra -pedantic -Werror -std=c++17 -O0 -g
LDFLAGS=$(CXXFLAGS)
OBJ=$(SRC:.cc=.o)

all: main.bin

main.bin: cache_lib.o test_cache_lib.o fifo_evictor.o
	$(CXX) $(LDFLAGS) -o $@ $^

squinkums_main.bin: squinkums_cache_lib.o test_cache_lib.o squinkums_fifo_evictor.o
	 $(CXX) $(LDFLAGS) -o $@ $^

InternetUnexplorer_main.bin: InternetUnexplorer_cache_lib.o test_cache_lib.o InternetUnexplorer_fifo_evictor.o
	 	$(CXX) $(LDFLAGS) -o $@ $^


%.o: %.cc %.hh
	$(CXX) $(CXXFLAGS) $(OPTFLAGS) -c -o $@ $<

clean:
	-rm *.o $(objects)
	-rm *.bin

touch:
	find . -type f -exec touch {} +
