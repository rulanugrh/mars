# NGINX HTTPS
Okay, before that, this is just a small project, all testing hehe. Immediately, this image uses the nginx base image, which was modified with several files, such as:

```console
CA : To Create SSL
default-ssl.conf : File Configuration for SSL
```

# Configure SSL
Just for information and knowledge sharing. To configure SSL I use openssl , here I make the first two for root and the second for the web. Okay first we create for root :

```console
kiyo@alphacentauri:~/cert$ openssl genrsa -aes128 -out rootca.key
kiyo@alphacentauri:~/cert$ openssl rsa -in rootca.key -out rootca.key
kiyo@alphacentauri:~/cert$ chmod 400 rootca.key
kiyo@alphacentauri:~/cert$ openssl req -x509 -new -key rootca.key -out rootca.crt
```

Next we make the one for the web:

```console
kiyo@alphacentauri:~/cert$ openssl genrsa -aes128 -out ca.key
kiyo@alphacentauri:~/cert$ openssl rsa -in ca.key -out ca.key
kiyo@alphacentauri:~/cert$ chmod 400 ca.key
kiyo@alphacentauri:~/cert$ openssl req -new -key ca.key -out ca.csr
kiyo@alphacentauri:~/cert$ openssl x509 -req -in ca.csr -CAkey rootca.key -CA rootca.crt -CAcreateserial > ca.crt
```

After that, I just configure default-ssl.conf which will be copied to `/etc/nginx/conf.d/default-ssl.conf` : 

```console
server {
    listen       80;
    listen       443 ssl;
    server_name  localhost;
    ssl_certificate /etc/cert/ca.crt;
    ssl_certificate_key /etc/cert/ca.key;
    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }
    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}
```

# Build
For easy builds, you can use docker-compose so that it directly becomes a container or dockerfile to become an image. Maybe I'll try docker-compose for the Dockerfile and I'll publish it on github

```console
version: '3.3'

services:
  nginx-https:
    container_name: webserver
    image: kyzxo/nginx-https
    hostname: webserver
    ports:
      - 80:80
      - 443:443
```

For the dockerfile I config like this :
```console
FROM nginx

WORKDIR /app

LABEL maintainer="github.com/Kyxzy"

RUN apt update -y && apt install nano -y

COPY default-ssl.conf /etc/nginx/conf.d/default-ssl.conf

ADD /cert/* /etc/cert/

EXPOSE 443
```

# Create Container & Build Image
To make it with docker-compose then what should be done like this :
```console
kiyo@alphacentauri:~$ docker-compose up -d
```
To stop the running container process in docker-compose do this :
```console
kiyo@alphacentauri:~$ docker-compose down
```
To build the image and run the container with the dockerfile, do it like this :
```console
kiyo@alphacentauri:~$ docker build -t nginx-https .
kiyo@alphacentauri:~$ docker run -it -d -p 80:80 -p 443:443 nginx-https
```

> Note : "For certs, you can make your own, I have listed the procedure above"
