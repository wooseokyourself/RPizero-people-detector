cmake_minimum_required(VERSION 3.0)

# project name and enable C++ support
project( main LANGUAGES CXX)

# require C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package( OpenCV REQUIRED )
add_compile_options(-W)
include_directories( cpp ${OpenCV_INCLUDE_DIRS} )
add_executable( main cpp/main.cpp cpp/yolo_cpu.cpp )
target_link_libraries( main ${OpenCV_LIBS} )