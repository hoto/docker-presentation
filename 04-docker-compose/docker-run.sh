#! /bin/bash

docker rm --force mongo
docker rm --force my_node_app

docker run \
  --detach \
  --name mongo \
  --volume $PWD/data:/data/db \
  --expose 27017 \
  mongo:3.4.1

docker build \
  --tag my_node_app:1.0.0 .

docker run \
  --detach \
  --name my_node_app \
  --volume $PWD/src:/app/src \
  --link mongo:mongo \
  --publish 8080:8080 \
  my_node_app:1.0.0
