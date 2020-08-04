#include <iostream>
#include "yolo_cpu.hpp"

int main(void) {
    int resize;
    string imagePath;
    cout << "Image path: ";
    cin >> imagePath;
    cout << "Resize(default=416): ";
    cin >> resize;
    doInference(imagePath, resize);
    return 0;
}