<h1 align='center'>Page Website By Flask</h1>

Docker-Compose
==============
Build the image and create container
```console
kiyo@alphacentauri:~$ docker-compose up -d
````

Stop the container
```console
kiyo@alphacentauri:~$ docker-compose down
Stopping web ... done
Removing web ... done
Removing network root_default
```
<p><img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></p>

Build Dockerfile
================

```console
kiyo@alphacentauri:~$ ls
Dockerfile  web
kiyo@alphacentauri:~$ docker build -t web-apps .
Step 1/9 : FROM python:3.7
 ---> 869a8debb0fd
Step 2/9 : WORKDIR /web
 ---> Running in 05fb7e4b12b8
Removing intermediate container 05fb7e4b12b8
 ---> d0341f2baf6b
Step 3/9 : COPY /web/requirements.txt /web/requirements.txt
 ---> 8b8e81336bec
Step 4/9 : RUN pip3 install -r requirements.txt --no-cache-dir
 ---> Running in 904e1ead1019
 ---> 871505a1a87d
Step 5/9 : COPY /web/main.py /web/main.py
 ---> 425de9936845
Step 6/9 : COPY /web/templates/index.html /web/templates/index.html
 ---> 33703ac5687e
Step 7/9 : COPY /web/static/css/style.css /web/static/css/style.css
 ---> e42318ea35b8
Step 8/9 : COPY /web/static/img/bg.gif /web/static/img/bg.gif
 ---> 95542ba0d553
Step 9/9 : CMD [ "python3", "main.py" ]
 ---> Running in 9920b691d5d5
Removing intermediate container 9920b691d5d5
 ---> fa0e10ed8ed6
Successfully built fa0e10ed8ed6
Successfully tagged web-apps:latest
kiyo@alphacentauri:~$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED              SIZE
web-apps            latest              fa0e10ed8ed6        About a minute ago   913MB
python              3.7                 869a8debb0fd        About a minute ago   903MB
```
<p><img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></p>

Create Container
================

```console
kiyo@alphacentauri:~$ docker container crate --name webserver -p 80:8080 web-apps
78b8a63997037232ec2e81a722ce0ad001264067a64a0d83f7ffddc510af759b
kiyo@alphacentauri:~$ docker container ls -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
78b8a6399703        web-apps            "python3 main.py"   20 seconds ago      Created                                 webserver
kiyo@alphacentauri:~$ docker container start webserver
webserver
kiyo@alphacentauri:~$ docker container ls -a
CONTAINER ID        IMAGE               COMMAND             CREATED              STATUS              PORTS                  NAMES
78b8a6399703        web-apps            "python3 main.py"   About a minute ago   Up 19 seconds       0.0.0.0:80->8080/tcp   webserver
```

`Note : Default Port This File is 8080`

<p><img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></p>

<p><img src="./web/output.png" /></p>
