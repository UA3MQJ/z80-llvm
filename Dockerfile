FROM ubuntu:20.10
LABEL authors="Alexey Bolshakov <ua3mqj@gmail.com>"
ADD . /app
WORKDIR /app
RUN apt-get update && \
    apt-get install -y git subversion cmake build-essential g++ apt-get install python-dev python3-dev && \
    git clone https://github.com/jacobly0/llvm-z80.git llvm && \
    cd llvm && git checkout 0dcad6c22b578f076756d67605bca3d931786ef9
RUN svn auth
RUN echo "http-timeout = 259200" >> ~/.subversion/servers
RUN echo "http-timeout = 259200" >> /etc/subversion/servers
RUN svn co http://llvm.org/svn/llvm-project/llvm/trunk -r 316129 --force llvm
RUN svn co http://llvm.org/svn/llvm-project/cfe/trunk -r 316129 --force llvm/tools/clang
RUN ./build.sh
