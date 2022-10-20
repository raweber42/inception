FROM debian:buster

# RUN apt update && apt install -y php7.3 php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip wget unzip
# RUN apt-get update && apt-get install -y php7.3 php-mysqli php-fpm wget unzip sendmail
RUN apt-get update && apt-get install -y php-mysql php-fpm mariadb-client wget unzip

RUN mkdir -p /var/www/html
WORKDIR /var/www/

RUN wget https://wordpress.org/latest.zip
RUN unzip /var/www/latest.zip
RUN rm -f /var/www/latest.zip
RUN chown -R www-data:www-data /var/www/wordpress/

RUN mkdir -p /run/php
RUN chown www-data:www-data /run/php

COPY --chown=www-data:www-data conf/wp-config.php /var/www/wordpress/
COPY --chown=www-data:www-data conf/wordpress-entrypoint.sh /tmp/wordpress-entrypoint.sh
COPY --chown=www-data:www-data conf/www.conf /etc/php/7.3/fpm/pool.d

RUN rm -f /var/www/wordpress/wp-config-sample.php
EXPOSE 9000

CMD ["/bin/bash", "/tmp/wordpress-entrypoint.sh"]