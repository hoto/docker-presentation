docker run --detach \
  --name mongo \
  --expose 27017 \
  mongo:3.4.1

docker run \
  --rm --interactive  --tty \
  --link mongo:mongo \
  busybox:1.26.1 sh

# clean up
docker stop mongo
docker rm mongo
