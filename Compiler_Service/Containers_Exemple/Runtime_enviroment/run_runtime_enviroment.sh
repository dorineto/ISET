#!/bin/bash

if [ `docker container ls -aqf name=test_runtime_enviroment | wc -c` -eq 0 ]
then
    docker run -it --mount type=bind,src="$(pwd)/run",dst=/data -w /data \
    --name test_runtime_enviroment \
    alpine:3.14 sh -c "(apk add gcompat > /dev/null) && ./hello_world"
else
    docker start -i test_runtime_enviroment
fi

