FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD=1234
COPY init-db.mysql /init-db.mysql
COPY init_mysql.sh /init_mysql.sh 
RUN chmod 755 /init_mysql.sh
RUN /init_mysql.sh
