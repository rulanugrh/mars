FROM php:7.3-apache
LABEL author="Kiyotaka"
WORKDIR /app

# Install Kebutuhan
RUN apt update -y && apt install mariadb-server nano wget git unzip -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli 

# Copy Assets
ADD /assets/database.sql /app/database.sql
ADD /assets/000-default.conf /etc/apache2/sites-available/000-default.conf

# Install PhpmyAdmin & Wordpress
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.7/phpMyAdmin-4.9.7-all-languages.zip
RUN unzip phpMyAdmin-4.9.7-all-languages.zip
RUN mv phpMyAdmin-4.9.7-all-languages /usr/share/pma
RUN rm /usr/share/pma/config.sample.inc.php
COPY /assets/config.inc.php /usr/share/pma/config.inc.php
RUN wget https://wordpress.org/latest.zip
RUN mv latest.zip /var/www/html/

# Setup ke Website
RUN unzip /var/www/html/latest.zip
RUN mv /app/wordpress/ /var/www/html
COPY /assets/wp-config.php /var/www/html/wordpress/wp-config.php

# Setup Database & Port
ADD /assets/setup.sh /app/setup.sh
RUN chmod 777 /app/setup.sh
RUN ./setup.sh
EXPOSE 80 3306

