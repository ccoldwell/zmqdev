#!/bin/bash
docker kill zmq/dev
docker rmi zmq/dev
docker build -t zmq/dev .
sudo cp zmqdev /usr/local/bin/
sudo chmod a+x /usr/local/bin/zmqdev

