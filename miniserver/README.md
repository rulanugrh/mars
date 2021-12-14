<h1 align="center"> MINISERVER BY DOCKER </h1>

<div align='center'>
  <img src=https://c.tenor.com/3Umw4_D5vpMAAAAC/aru-ai.gif>
</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></p>


## About Project
Yo everyone, finally finished what I wanted to do. Okay, for this project, I created an image in which there are several services that are familiar and many people use them. Anyway, I'll just discuss what this project is made of :

* [Docker](https://docker.github.io)
* [PHP](https://www.php.net)
* [Wordpress](https://wordpress.org)
* [Phpmyadmin](https://www.phpmyadmin.net)
* [Mysql](https://www.mysql.com)
* [Apache](https://www.apache.org)
* [Bash](https://github.com)

Well, before that, many used to create wordpress, phpmyadmin, databases with docker-compose. Here I do a new innovation, to shorten the work when we need it.

## Getting Started
Okay here I will explain how to build an image with the dockerfile. First `clone` this repository first: 

```console
git clone https://github.com/Kyxzy/docker-project.git
cd miniserver/
```
Next after that, we will build the image. Anyway, before that first change some files for database configuration, user, and password for your mysql.

1. Edit database.sql, first :
```sql
create database example_db;
create user 'admin'@'localhost' identified by 'ExamplePassword';
```

2. Then edit and wp-config.php 
```php
define( 'DB_NAME', 'example-db' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'ExamplePassword' );
```

3. After changing, we will build the image
```console
kiyo@alpha:~/docker-project/miniserver$ docker build -t miniserver .
```

## Usage
After it is created, we create the container. Oh yes, because it uses the database and the database in its container. So there are some conditions so that it can run perfectly:

```console
kiyo@alpha:~/docker-project/miniserver$ docker run --rm -d -p 80:80 -p 3306:3306 --name=web-server miniserver 
kiyo@alpha:~/docker-project/miniserver$ docker exec -d web-server /etc/init.d/mariadb start
```

Anyway, because this image has a large size, you can also adjust the memory of the container to reduce overload

```console
kiyo@alpha:~/docker-project/miniserver$ docker run --rm -d -p 80:80 -p 3306:3306 -m 500m --name=web-server miniserver 
kiyo@alpha:~/docker-project/miniserver$ docker exec -d web-server /etc/init.d/mariadb start
```

> Note : If you don't want to change a file, you just need to login with the default admin user and admin password. For those with memory, you can see the Docker documentation. Base image i'm user is php:7.3-apache
