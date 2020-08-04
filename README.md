# RPizero-people-detector
Raspberry pi zero, armv6l, OpenCV DNN, YOLO, COCO dataset
  
# Install OpenCV 4.4.0 in Raspberry Pi Zero
[ref here](https://towardsdatascience.com/installing-opencv-in-pizero-w-8e46bd42a3d3)  


#### 1. Expand file system
~~~
$ sudo nano /etc/dphys-swapfile
~~~
Change CONF_SWAPSIZE to 2048.
~~~
.
.
.
# where we want the swapfile to be, this is the default
#CONF_SWAPFILE=/var/swap
# set size to absolute value, leaving empty (default) then uses computed value
#   you most likely don't want this, unless you have an special disk situation
#CONF_SWAPSIZE=100
CONF_SWAPSIZE=2048
.
.
.
~~~

#### 2. Install OpenCV dependencies
~~~
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install git build-essential cmake pkg-config checkinstall
$ sudo apt-get install libjpeg-dev libtiff-dev libgif-dev
$ sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev
$ sudo apt-get install libgtk2.0-dev
$ sudo apt-get install libxvidcore-dev libx264-dev libgtk-3-dev
$ sudo apt-get install libdc1394-22-dev libv4l-dev
$ sudo apt-get install libopenblas-dev libatlas-base-dev libblas-dev
$ sudo apt-get install libjasper-dev liblapack-dev libhdf5-dev
$ sudo apt-get install gcc-arm* protobuf-compiler
~~~

#### 3. Download OpenCV 4.4.0
~~~
$ cd ~
$ mkdir opencv && cd opencv
$ wget -O opencv.zip https://github.com/opencv/opencv/archive/4.4.0.zip
$ wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.4.0.zip
$ unzip opencv.zip
$ unzip opencv_contrib.zip
~~~

#### 4. CMake and compile OpenCV 4.4.0
~~~
$ cd opencv-4.4.0
$ mkdir build && cd build
$ cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-4.4.0/modules \
    -D ENABLE_NEON=OFF \
    -D ENABLE_VFPV3=OFF \
    -D BUILD_TESTS=OFF \
    -D INSTALL_PYTHON_EXAMPLES=OFF \
    -D OPENCV_ENABLE_NONFREE=ON \
    -D CMAKE_SHARED_LINKER_FLAGS=-latomic \
    -D BUILD_EXAMPLES=OFF ..
~~~
... and compile
~~~
$ make
~~~
if done, 
~~~
$ sudo make install
$ sudo ldconfig
~~~

# Usage of this repo

#### 1. Get pre-trained model
~~~
$ sh getModel.sh
~~~

#### 2. Compile & build
~~~
$ make
~~~

#### 3. Run
~~~
$ ./main
~~~
