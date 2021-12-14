create database wordpress;
create user 'admin'@'localhost' identified by 'admin';
grant all privileges on *.* to'admin'@'localhost' identified by 'admin';
grant all privileges on *.* to'pma'@'localhost' identified by 'pmapass';
flush privileges;