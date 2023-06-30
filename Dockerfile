FROM centos:latest
RUN apt update && apt install httpd sudo
RUN apt update && apt install  php sudo
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
ADD site /var/www/html
EXPOSE 80