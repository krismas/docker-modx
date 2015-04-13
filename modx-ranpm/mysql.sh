#!/bin/sh
#
# Install mySQL
#
/usr/bin/mysql_install_db
chown -R mysql:mysql /var/lib/mysql
/usr/bin/mysqld_safe &
sleep 5
ps axl
ls -l /var/lib
ps axl
/usr/bin/mysqladmin -u root password "${ROOT_PWD}"
