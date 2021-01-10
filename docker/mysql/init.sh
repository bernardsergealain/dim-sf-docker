#!/bin/bash

printf "\n\033[0;44mPreparing the database\033[0m\n"

# Makes sure that the database is up before running database queries
echo "Checking if the database is up ..."
while ! mysqladmin ping -h"localhost" --silent; do
    echo "Waiting for database to come up ..."
    sleep 2
done
echo "Database is up ..."

# Create an application specific non-root user with all privileges
create="CREATE USER IF NOT EXISTS '${APP_DB_USER}'@'%' IDENTIFIED BY '${APP_DB_PASS}';"
grant="GRANT ALL PRIVILEGES ON *.* TO '${APP_DB_USER}'@'%' IDENTIFIED BY '${APP_DB_PASS}' WITH GRANT OPTION;"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "$create$grant"
