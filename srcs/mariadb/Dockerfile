FROM debian:buster-slim

RUN apt-get update && apt-get install -y mariadb-server

COPY ./config/my.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["mysqld", "--user=mysql"]