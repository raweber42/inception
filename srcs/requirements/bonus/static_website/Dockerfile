FROM debian:buster

RUN apt-get update && apt-get install nginx -y

COPY	conf/index.html /var/www/html/

CMD	["nginx", "-g", "daemon off;"]