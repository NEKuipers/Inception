[ "$(ls -A /var/lib/mysql)" ] && echo "Not Empty" || mv /mysql/* /var/lib/mysql/
mysqld_safe