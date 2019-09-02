echo "#아래 명령으로 mysql Slave Node 중에서 하나의 bash 쉘 실행"
echo
docker container exec -it manager \
  docker service ps todo_mysql_slave \
  --no-trunc --filter "desired-state=running" \
  --format "docker container exec -it {{.Node}} docker container exec -it {{.Name}}.{{.ID}} bash"

echo 
echo 
echo "#mysql에 접속해서 salve 서비스에서도 테이블 및 데이터가 조회되는지 확인 즉, mysql Master-Slave 기능이 정상 동작하는지 확인"
echo
echo "mysql -u justin -pjustin tododb"
echo "select * from todo;"
echo "exit"
echo "exit"
