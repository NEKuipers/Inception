apt-get update
apt-get -y upgrade
apt-get install -y nginx
apt-get install -y openssl
openssl req -nodes -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 <<_EOF_
NL
North-Holland
Amsterdam
Codam   
Student
nkuipers.42.fr
nkuipers@student.codam.nl
_EOF_
mv cert.pem /etc/ssl/certs/
mv key.pem /etc/ssl/private/
rm -rf /var/www/html/*