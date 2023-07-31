FROM centos:latest
MAINTAINER musaddique.harkare@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/honey.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip honey.zip
RUN CP -rvf honey/* .
RUN rm -rf honey honey.zip
CMD ["usr/bin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
