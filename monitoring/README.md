## Monitoring Server
Okay for this docker project, namely server monitoring with prometheus which is implemented in the dockerfile. Prometheus is a software used for server monitoring. This application is often implemented by developers / DevOps Enginerring. Because the complex system makes it easy to monitor the server. Actually it's easy to install but because it's easier when you just build. So this time I will make it a dockerfile

## Build Dockerfile
It's easy to build, here I use the nginx base image. Because it is a website, okay, let's go straight to the build. The first part may be the base image:

```console
# Base Image 
FROM nginx
WORKDIR /app
LABEL maintainer="github.com/Kyxzy"
```
After that we install the package for the package I took in `prometheus.io`. Here's the script:

```console
# Install Package
RUN apt update -y && apt install wget -y
RUN wget https://github.com/prometheus/prometheus/releases/download/v2.32.0-rc.1/prometheus-2.32.0-rc.1.linux-amd64.tar.gz
RUN tar -xvf  prometheus-2.32.0-rc.1.linux-amd64.tar.gz
RUN mv prometheus-2.32.0-rc.1.linux-amd64 prometheus-
RUN chmod 777 /app/prometheus/prometheus
```

Finally, we expose the port and its running prometheus settings:

```console
# Running Prometheus
WORKDIR /app/prometheus
CMD ["./prometheus"]

# Expose Port
EXPOSE 9090
```

## Image & Container
After successfully created, we will then build the image with the command `docker build -t monitoring .` and create a container with the command `docker run` :

```console
kiyo@alphacentauri:~/prometheus$ docker build -t monitoring .
root@alphacentauri:~/prometheus$ docker run --rm -dp 9090:9090 --name=sample monitoring
```

> Note: To use it, you can open the prometheus website to make it easier to implement
