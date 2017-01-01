# Advanced Dockerfile - nodejs app

Build and run image:

    docker build --tag 03-image .
    
    docker run \
      --rm \
      --interactive \
      --tty \
      --publish 8080:80 \
      --name 03-container \
      03-image
      
Open browser:

    localhost:8080