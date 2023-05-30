FROM centos:latest
MAINTAINER bhosalevishal0112@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/microo.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip microo.zip
RUN cp -rvf microo/* .
RUN mv-rf microo microo.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80