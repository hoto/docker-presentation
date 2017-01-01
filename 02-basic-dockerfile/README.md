# Basic Dockerfile

Build and run the image:

    cd 02-basic-dockerfile/
    
    docker build --tag 02-image .
    docker images
    
    docker run --name 02-container 02-image
    docker ps --all
    
Remove exited container:

    docker rm 02-container
    
Remove created image:

    docker rmi 02-image