CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'joppe'@'localhost';
SET PASSWORD FOR 'joppe'@'localhost' = PASSWORD('definitelynotasecurityrisk');
GRANT ALL PRIVILEGES ON wordpress.* TO 'joppe'@'localhost' IDENTIFIED BY 'definitelynotasecurityrisk';
GRANT ALL ON wordpress.* to 'joppe'@'%' IDENTIFIED BY 'definitelynotasecurityrisk';

FLUSH PRIVILEGES;

CREATE USER 'superuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE USER 'superuser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
