FROM debian:buster-slim

RUN apt update && apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
# RUN mkdir -p /var/www/

ADD http://wordpress.org/latest.tar.gz /var/www/
RUN tar xfz /var/www/latest.tar.gz
RUN rm -f /var/www/latest.tar.gz

COPY wp-config-sample.php /usr/local/bin/
COPY wordpress-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["wordpress-entrypoint.sh"]

EXPOSE 9000