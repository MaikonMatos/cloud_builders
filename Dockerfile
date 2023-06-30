FROM centos:latest
RUN apt update && apt install httpd
RUN apt update && apt install  php
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
ADD site /var/www/html
EXPOSE 80