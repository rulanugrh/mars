<h1 align='center'>Docker Project by ItsArul</h1>

<p align='center'>
    <img src=https://c.tenor.com/6LyXLgF8ksUAAAAd/anime-gif.gif>
</p>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif">

Hey, yo guys okay, this time I made some projects from Docker. Anyway, this project is open source, for example, if you want to have a look and are interested in clone or setup, go ahead. Okay, let's get straight to the topic, for this project there are actually many shortcomings because most of them only use applications, not programming languages.

## Technology Used
- [`Docker`](https://www.docker.com/) - Main tools to build this project
- [`Flask`](https://flask.palletsprojects.com/en/2.0.x/) - Wrong server side I'm using
- [`HTML5`](https://www.w3schools.com/html/) - Is the programming language I use for python supporters
- [`CSS3`](https://www.w3schools.com/css/) - Programming language to beautify HTML
- [`PHP`](https://www.php.net/) - The programming language I use to manage the settings of the application
- [`NGINX`](https://www.nginx.com/) - API Gateway I used to build this project
- [`Apache`](https://www.apache.org/) - API Gateway which I used to build one of the projects
- [`ModSecurity`](https://www.modsecurity.org/) - WAF I use to combine with apache
- [`PhpMyAdmin`](https://www.phpmyadmin.net/) - One of the platforms used to manage databases
- [`Wordpress`](https://wordpress.com/) - One of the platforms for managing blogs that we want to create
- [`MySql `](https://www.mysql.com/) - Database that I use in several projects to manage it
- [`Prometheus`](https://prometheus.io/) - The monitoring platform I use for one of the projects I created
- [`Grafana`](https://grafana.com/) - The monitoring platform I use for one of the projects I created

## Docker Project
- [`NGINX / Wordpress / PhpMyAdmin`](https://github.com/ItsArul/docker-project/tree/main/wordpress-mysql-pma) - Is one of the projects which is popular among vocational students in Indonesia
- [`Flask / HTML / CSS`](https://github.com/ItsArul/docker-project/tree/main/flask-html-css) - A simple project that uses flask as the main medium
- [`Apache / ModSecurity`](https://github.com/ItsArul/docker-project/tree/main/harden-apache) - This is a project that uses apache as the main media where here I am hardening apache
- [`NGINX`](https://github.com/ItsArul/docker-project/tree/main/nginx-https) - Solo nginx project in which I have SSL installed
- [`Prometheus`](https://github.com/ItsArul/docker-project/tree/main/monitoring) - Docker project used for monitoring
- [`MINISERVER`](https://github.com/ItsArul/docker-project/tree/main/miniserver) - This is the same as the wordpress project except that it is in the form of a dockerfile so this makes it easier for us to manage

## Getting Started
Okay, to get the whole thing, you just need to `git clone`, but for more details you can see in each project because I have explained it there

## Usage
Okay, there are several ways to use the project because there are those using `docker-compose.yml` and `Dockerfile`. Here's how to use it, pay close attention:

> This is for the install part with docker-compose
```compose
docker-compose up -d
````

> To stop service from docker-compose
```compose
docker-compose down
```

> Section to install with Dockerfile
```
docker build -t (name_image).
```

## LICENSE
Distributed under the MIT License. See [`LICENSE`](https://github.com/ItsArul/docker-project/blob/main/LICENSE) for more information
