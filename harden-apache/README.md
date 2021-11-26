What is this ?
==============
Ok this is a container which is made of base `php:7.3-apache`. The purpose of this is to harden the image. Because we know that php has a lot of vulnerabilities, so I decided to make an image with the base `php:7.3-apache` which has been harden by me

Build
=====
As usual to make it into an image is easy. Do it like this :
```console
kiyo@alphacentauri:~$ docker build -t web-harden .
```

Then after you build, you can create a container and run the container :
```console
kiyo@alphacentauri:~$ docker container create --name webserver -p 80:80 web-harden
97d996c5633779a11d16281e26e3d77d8684adc8efabfb918a71f0fa554fb285
kiyo@alphacentauri:~$ docker container start webserver
webserver
kiyo@alphacentauri:~$ docker container ls -a
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS                NAMES
97d996c56337        web-harden          "docker-php-entrypoi…"   About a minute ago   Up 19 seconds       0.0.0.0:80->80/tcp   webserver
```

Output
======
If you have, you can try it with your localhost ip or your VM ip. Here is the output after creating it

<img src='./assets/output.png'>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif">

Oh yeah, for the LFI script, I made it like this

```php
<?php
echo system($_GET['cmd']);
?>
```

Anyway, because I also created a regular `LFI` vulnerability, I tried to access it. It turned out that the `LFI` failed because it had been hardened so the system would display `Forbidden`

<img src=./assets/forbidden.png>

