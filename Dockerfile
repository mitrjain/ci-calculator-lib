FROM ubuntu:latest

RUN apt-get update && apt-get install -y build-essential cmake

RUN apt-get install -y libgtest-dev && cd /usr/src/gtest && cmake . &&  cmake --build . && cp lib/*.a /usr/lib
