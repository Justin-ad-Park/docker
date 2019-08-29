#도커 스택이 이용할 Overlay(네트워크를 감싸서 논리적으로 하나의 네트워크로 구성한-over layered) network을 만든다.
docker container exec -it manager docker network create --driver=overlay --attachable ch03

