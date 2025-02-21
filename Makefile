CXXFLAGS=-Wall -Wextra -Wpedantic -std=c++17
SRC=main.cpp\
    config.cpp
OBJ=$(SRC:%.cpp=%.o)

run-cppcheck: $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<

clean:
	rm -f run-cppcheck *.o

.PHONY: clean
