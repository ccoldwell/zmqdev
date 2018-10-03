#!/usr/bin/env bash
SOURCE=$1

BINARY=${SOURCE%.c}

SOURCE="${BINARY}.c"


echo "+ Building $BINARY from $SOURCE"

gcc -g -Wall ${SOURCE} -lpthread -lzmq -lczmq -o ${BINARY}
