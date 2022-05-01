#!/bin/bash

if [ `docker container ls -aqf name=iset_react_compiler | wc -c` -eq 0 ]
then
    docker run -dp 3000:3000 -w /data --mount type=bind,src="$(pwd)",dst=/data  \
    --name iset_react_compiler node:current-alpine sh -c "yarn install && yarn run dev" > /dev/null
else
    docker start iset_react_compiler > /dev/null
fi