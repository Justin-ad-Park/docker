docker container exec -it manager  docker service ps todo_mysql_master   --no-trunc --filter "desired-state=running" 

echo
echo "#도커 특정 서비스에 명령어를 실행하는 방법"
echo "docker container exec -it {Node} docker container exec -it {Name}.{ID} 명령어"
echo

docker container exec -it manager \
  docker service ps todo_mysql_master \
  --no-trunc --filter "desired-state=running" \
  --format "docker container exec -it {{.Node}} docker container exec -it {{.Name}}.{{.ID}} bash"
