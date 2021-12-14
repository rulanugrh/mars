#!/bin/bash
set -e
service mariadb start
mysql -u root < /app/database.sql
