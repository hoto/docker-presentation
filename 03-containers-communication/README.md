# Containers communication

Start `mongo` and `busybox` containers:

    bash run-mongo-and-buxybox.sh
   
Run commands from `busybox` container:

    ping mongo
    telnet mongo 27017