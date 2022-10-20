FROM debian:buster

RUN apt-get update && apt-get install nginx -y

COPY	conf/nginx.conf /etc/nginx/sites-available/default
COPY	conf/certs /etc/nginx/certs/self-signed

# COPY ./index.html /var/www/html
# change above wordpress
CMD	["nginx", "-g", "daemon off;"]