docker container exec -it manager \
  docker service create --replicas 1 --publish 8000:8080 --name echo \
  registry:5000/justinpark/echo:latest

