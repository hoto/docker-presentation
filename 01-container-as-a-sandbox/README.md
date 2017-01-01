# Container as a sandbox

Each of those commands will download an image from public Docker Hub ()if not already present on your machine) and spawn a new container.


    docker run --rm --interactive --tty ubuntu:16.10
    docker run --rm -it node:6.9.2
    docker run --rm -it python:3.5.1
    docker run --rm -it haskel:8.0.1
    docker run --rm -it clojure:3.0
    docker run --rm -it elixir:3.0
    docker run --rm -it fsharp:4.0.1.1
    docker run --rm -it java:9


    --rm                   Automatically remove the container when it exits (to save disk space)
    -i, --interactive      Keep standard input (stdin) open even if not attached (so container won't exit)
    -t, --tty              Allocate a pseudo-TTY (so you can write commands)