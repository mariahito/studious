#Maria Hito(mh4wt)
#3/12/17

CXX = clang++ -O2

# with which flags?
CXXFLAGS = -g

# what are the .o files for the program?
OFILES = wordPuzzle.o hashTable.o timer.o

main: $(OFILES)
	$(CXX) $(OFILES)

clean:
	rm *.o

wordPuzzle.o: wordPuzzle.cpp
hashTable.o: hashTable.cpp
timer.o: timer.cpp

