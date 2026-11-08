#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Denis Astahov
#---------------------------------------------------------------------------

FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo 'Docker Image on CloudRun by Viktor Povarych<br>'   > /var/www/html/index.html
RUN echo '<b><font color="orange">Version 1.1</font></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
