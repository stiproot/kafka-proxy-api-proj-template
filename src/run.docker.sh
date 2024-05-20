#!/bin/sh

docker build -f Dockerfile -t img-kakfa-proxy-api-$1 .

docker run --network kafka-proxy-api \
    --name kakfa-proxy-api-$1 \
    -p 8001:8002 -it --detach \
    img-kakfa-proxy-api-$1
