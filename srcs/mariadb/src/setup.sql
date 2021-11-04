CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'nick'@'localhost';
SET PASSWORD FOR 'nick'@'localhost' = PASSWORD('mypassword');
GRANT ALL PRIVILEGES ON wordpress.* TO 'nick'@'localhost' IDENTIFIED BY 'mypassword';
GRANT ALL ON wordpress.* to 'nick'@'%' IDENTIFIED BY 'mypassword';

FLUSH PRIVILEGES;

CREATE USER 'superuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE USER 'superuser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
