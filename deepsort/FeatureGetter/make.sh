#!/bin/bash





IINCLUDE="-I/usr/local/include/opencv -I/usr/local/include -I/home/xyz/.cache/bazel/_bazel_xyz/bf8eb6829678e55c8d74723271bfc5b3/external/eigen_archive/Eigen -I/home/xyz/.cache/bazel/_bazel_xyz/bf8eb6829678e55c8d74723271bfc5b3/external/eigen_archive -I/home/xyz/code/deepir/tensorflow-1.2.0-rc0 -I/home/xyz/code/deepir/tensorflow-1.2.0-rc0/bazel-genfiles"

LLIBPATH="-L/usr/local/lib -L/home/xyz/code/deepir/tensorflow-1.2.0-rc0/bazel-bin/tensorflow"
LLIBS="-lopencv_core -lopencv_imgproc -lopencv_imgcodecs -lopencv_highgui -lopencv_video -lopencv_videoio -ltensorflow_cc"

rm libFeatureGetter.so -rf
g++ --std=c++14 -fPIC -shared -o libFeatureGetter.so $IINCLUDE $LLIBPATH $LLIBS FeatureGetter.cpp 






