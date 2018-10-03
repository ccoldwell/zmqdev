FROM ubuntu:latest

RUN apt-get -y update

RUN apt-get -y install apt-utils


# create volume
RUN mkdir -p /src

# http://packages.ubuntu.com/de/trusty/build-essential
RUN apt-get -y install build-essential

RUN apt-get -y install cmake
RUN apt-get -y install ninja-build

# http://packages.ubuntu.com/de/trusty/valgrind
RUN apt-get -y install valgrind

RUN apt-get -y install libncurses5-dev

RUN apt-get -y install libzmq3-dev
RUN apt-get -y install libczmq-dev

COPY cval.sh /usr/bin/cval
COPY zmqbuild.sh /usr/bin/z
COPY zmqvalgrind.sh /usr/bin/v
COPY valgrind.supp /valgrind.supp

# launch
CMD bash
