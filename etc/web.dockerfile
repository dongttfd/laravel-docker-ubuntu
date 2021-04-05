FROM ubuntu_docker

ADD /conf/vhosts.conf /etc/apache2/sites-available/vhosts.conf
ADD /conf/php.ini /etc/php/7.4/fpm/php.ini
RUN a2dissite 000-default && a2ensite vhosts

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
