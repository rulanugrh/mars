<h1 align='center'>Page Website By Flask</h1>

<div align='center'>
    <img src='http://img.shields.io/badge/-Python-3776AB?style=flat-square&logo=python&logoColor=ffffff)' width=100px />
    <img src='https://img.shields.io/badge/-HTML5-%23E44D27?style=flat-square&logo=html5&logoColor=ffffff' width=100px/>
    <img src= 'https://img.shields.io/badge/-CSS3-%231572B6?style=flat-square&logo=css3' width=100px/>
</div>

<h1 align='center'>Build</h1>
This is docker combined with flask, html and css. Where the Flask acts as the server that provides port access. Okay, just here's how to install it :
```console
kiyo@debian:~$ ls
Dockerfile  web
kiyo@debian:~$ docker build -t web-apps .
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
kiyo@debian:~$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED              SIZE
web-apps            latest              fa0e10ed8ed6        About a minute ago   913MB
python              3.7                 869a8debb0fd        About a minute ago   903MB
```
<p><img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></p>

<h1 align='center'>Create Container</h1>


```console
kiyo@debian:~$ docker container crate --name webserver -p 80:8080 web-apps
78b8a63997037232ec2e81a722ce0ad001264067a64a0d83f7ffddc510af759b
kiyo@debian:~$ docker container ls -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
78b8a6399703        web-apps            "python3 main.py"   20 seconds ago      Created                                 webserver
kiyo@debian:~$ docker container start webserver
webserver
kiyo@debian:~$ docker container ls -a
CONTAINER ID        IMAGE               COMMAND             CREATED              STATUS              PORTS                  NAMES
78b8a6399703        web-apps            "python3 main.py"   About a minute ago   Up 19 seconds       0.0.0.0:80->8080/tcp   webserver
```

<p><img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif"></p>

<p><img src="./web/output.png" /></p>
