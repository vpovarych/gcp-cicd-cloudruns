#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Denis Astahov
#---------------------------------------------------------------------------

FROM ubuntu

RUN apt-get -y update && apt-get -y install apache2

RUN sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf
RUN sed -i 's/\*:80/\*:8080/g' /etc/apache2/sites-available/000-default.conf

RUN echo 'Docker Image on CloudRun by Viktor Povarych<br>'   > /var/www/html/index.html
RUN echo '<b><font color="green">Version 2 - port 8080</font></b>' >> /var/www/html/index.html

EXPOSE 8080
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
