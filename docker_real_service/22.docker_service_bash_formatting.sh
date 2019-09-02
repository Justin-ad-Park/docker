echo "#아래 명령으로 mysql Master Node에 bash 쉘 실행"
echo
docker container exec -it manager \
  docker service ps todo_mysql_master \
  --no-trunc --filter "desired-state=running" \
  --format "docker container exec -it {{.Node}} docker container exec -it {{.Name}}.{{.ID}} bash"

echo 
echo 
echo "#bash 쉘에서 아래와 같이 init-data.sh을 실행 테이블과 샘플 데이터를 생성"
echo "#init-data.sh은 최초에 이미지를 만들 때 /usr/local/bin 에 복사가 되었음"
echo
echo "init-data.sh"
echo 
echo "#mysql에 접속해서 테이블 생성 및 데이터가 잘 들어갔는지 확인"
echo
echo "mysql -u justin -pjustin tododb"
echo "select * from todo;"
echo "exit"
echo "exit"
