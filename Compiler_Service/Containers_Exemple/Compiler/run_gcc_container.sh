#!/bin/bash

docker run -it --mount type=bind,src="$(pwd)",dst=/data -w /data \
--name test_gcc_compiler --rm \
gcc:11.3.0-bullseye gcc src/hello_world.c -o bin/hello_world