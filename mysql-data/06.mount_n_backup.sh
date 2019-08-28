docker container run -v ${PWD}/tmp:/tmp \
  --volumes-from mysql-data \
  busybox \
  tar cvzf /tmp/mysql-backup.tar.gz /var/lib/mysql
