all:
	g++ -o main cpp/yolo_cpu.cpp cpp/main.cpp -std=c++11 -I/usr/local/include/opencv4/opencv2 -I/usr/local/include/opencv4 -L/usr/local/lib
