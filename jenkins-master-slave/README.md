Master - jenkins-master-docker-compose.yml

jenkins_app:
  image: jenkins:2.60.1
  container_name: jenkins_master
  restart: always
  ports:
   - "80:8080"
   - "50000:50000"
  volumes:
   - /mnt/jenkins_home:/var/jenkins_home
   
 docker-compose -f jenkins-master-docker-compose.yml up -d
  
Slave - jenkins-slave-docker-compose.yml

jenkins_slave:
  image: jenkinsci/jnlp-slave
  container_name: jenkins_slave_1
  command: -url http://build.cambio.se 9342fb2b08caeb4e6643afa29609e346a24a08331ab0f38cc98733de0d2cf284 jnlp-docker-slave
  restart: always
  volumes:
     - /mnt/jenkins_slave:/var/jenkins_home
     
docker-compose -f jenkins-slave-docker-compose.yml up -d
