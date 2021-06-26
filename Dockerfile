#===========================================
# DOCKERFILE
# Centos7
# Apache 2.4 / PHP 7.4 / MariaDB: 10.4.11
#===========================================
# Build Images: docker build . --rm -t ubuntu_docker
# Run image & ssh container: docker run -it ubuntu_docker

FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y vim curl
RUN apt-get install -y php7.4-cli php7.4-fpm php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath php7.4-json php7.4-mysql \
    && phpenmod pdo_mysql

RUN apt-get install -y apache2 libapache2-mod-php7.4 \
    && a2enmod proxy_fcgi setenvif \
    && a2enconf php7.4-fpm \
    && a2enmod rewrite

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
