CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'nick'@'localhost';
SET PASSWORD FOR 'nick'@'localhost' = PASSWORD('definitelynotasecurityrisk');
GRANT ALL PRIVILEGES ON wordpress.* TO 'nick'@'localhost' IDENTIFIED BY 'definitelynotasecurityrisk';
GRANT ALL ON wordpress.* to 'nick'@'%' IDENTIFIED BY 'definitelynotasecurityrisk';

FLUSH PRIVILEGES;

CREATE USER 'superuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE USER 'superuser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
