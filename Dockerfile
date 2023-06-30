FROM centos:latest
LABEL maintainer "Grupo8"
RUN yum -y install httpd
RUN yum -y install php
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
ADD site /var/www/html
EXPOSE 80