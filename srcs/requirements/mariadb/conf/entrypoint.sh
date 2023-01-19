#!/usr/bin/

mkdir -p /home/thamon/data/database
mkdir -p /home/thamon/data/www

/usr/bin/mysql_install_db --user=root --basedir=/user --datadir=/var/lib/mysql
/usr/bin/mysqld --user=root --datadir=/var/lib/mysql & sleep 2

mysql -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_NAME}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${MYSQL_NAME}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BUY '${MYSQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql -e "FULSH ALL PRIVILEGES;"

pkill mysqld
/usr/bin/mysqld --user=root --datadir=/var/lib/mysql