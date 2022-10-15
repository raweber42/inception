FROM debian:buster-slim

RUN apt-get update && apt-get install nginx -y
# COPY ./nginx.conf /etc/nginx/nginx.conf
# RUN rm /etc/nginx/conf.d/default.conf
COPY	nginx.conf /etc/nginx/conf.d/nginx.conf
COPY	certs /etc/nginx/certs/self-signed
# EXPOSE 80 // not needed, as already given in CLI command

COPY ./index.html /var/www/html
CMD	["nginx", "-g", "daemon off;"]