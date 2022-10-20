USE mysql;
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'wordpress';

-- -- set root password
-- UPDATE mysql.user SET Password=PASSWORD('secret') WHERE User='root';
-- UPDATE mysql.user SET plugin = '' WHERE user = 'root';
-- -- create db user for WP
-- CREATE USER IF NOT EXISTS 'wordpress'@'%';
-- UPDATE mysql.user SET Password=PASSWORD('secret') WHERE User='wordpress';
-- GRANT ALL ON wordpress.* TO 'wp'@'%';
-- FLUSH PRIVILEGES;