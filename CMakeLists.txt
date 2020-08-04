cmake_minimum_required(VERSION 2.8)

find_package( OpenCV REQUIRED )
include_directories( cpp ${OpenCV_INCLUDE_DIRS} )

set(CMAKE_CXX_COMPILER g++)
add_definitions("-Wall -std=c++14")
add_executable( main cpp/main.cpp cpp/yolo_cpu.cpp )
target_link_libraries( main ${OpenCV_LIBS} )