#! /bin/bash

docker run \
  --detach \
  --name mongo \
  --volume ./data:/data/db
  --expose 27017
  mongo:3.4.1

docker build \
  --tag my_node_app:1.0.0 .

docker run \
  --detach \
  --name my_node_app
  --volume ./src:/app/src
  --link mongo:mongo \
  --publish 8080:8080
  my_node_app:1.0.0
