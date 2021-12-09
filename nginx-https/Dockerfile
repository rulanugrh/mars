FROM nginx

WORKDIR /app

LABEL maintainer="github.com/Kyxzy"

RUN apt update -y && apt install nano -y

COPY default-ssl.conf /etc/nginx/conf.d/default-ssl.conf

ADD /cert/* /etc/cert/

EXPOSE 443
