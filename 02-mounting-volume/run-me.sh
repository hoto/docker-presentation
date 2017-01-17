#! /bin/bash

docker run \
    --volume ${PWD}/src:/src \
    python:3.5.1 \
    python /src/app.py
