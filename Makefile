#-----------------------------------------------#

CXX = g++
CXXFLAGS = -std=c++11
CPPSRC = src
OPENCV = `pkg-config --cflags --libs opencv4`

# Sources
SRC = $(CPPSRC)/yolo_cpu.cpp $(CPPSRC)/main.cpp

#-----------------------------------------------#

all:
	$(CXX) $(CXXFLAGS) $(SRC) $(OPENCV) -o main
	@echo "Compile is done!" 


clean:
	rm -f main

#-----------------------------------------------#

