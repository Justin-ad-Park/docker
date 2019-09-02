#parameters
# $1 : docker name
# $2 : join token of the target swarm

docker_name=$1
join_token=$2
echo "docker container exec -it $1 docker swarm join --token $2 manager:2377"

docker container exec -it $1 docker swarm join \
  --token $2 manager:2377
