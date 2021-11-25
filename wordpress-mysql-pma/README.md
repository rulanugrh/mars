Usage
=====
If you want custom your database you must edit this :

```docker
- MYSQL_DATABASE=wordpress
........
- WORDPRESS_DB_NAME=wordpress
........
```
If done, you can build 
```console
docker compose up -d
```

Stop the container
```console
docker compose down
```

Output
======
<img src='./img/pma.png' />
<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" />

<img src='./img/wp.png' />
<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" />

<img src='./img/output.png' />
<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" />
