#!/bin/bash
set -x


until mysqladmin ping -p1234 >/dev/null 2>&1; do
  echo -n "."; sleep 0.2
done

sleep 30

mysql -u root -p1234 < init-db.mysql
sleep 600
#Shutdown the container
kill 1


