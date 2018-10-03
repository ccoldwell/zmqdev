#!/bin/bash

valgrind --leak-check=yes "$@"

