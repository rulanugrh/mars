FROM php:7.3-apache

LABEL Author="Kiyotaka Ayanokouji"

RUN apt update -y && apt install libapache2-mod-security2 libapache2-mod-evasive apache2-utils nano -y

RUN rm /etc/modsecurity/modsecurity.conf-recommended

COPY /assets/modsecurity.conf /etc/modsecurity/modsecurity.conf

COPY /assets/apache2.conf /etc/apache2/apache2.conf

RUN ln -s /etc/apache2/mods-available/headers.load  /etc/apache2/mods-enabled/headers.load

COPY /assets/security.conf /etc/apache2/conf-available/security.conf

COPY /assets/php.ini /usr/local/etc/php/conf.d/docker-php-ext-sodium.ini

COPY /assets/index.html /var/www/html/index.html

COPY /assets/secret.php /var/www/html/secret.php

RUN hostnamectl set-hostname web-harden

EXPOSE 80
