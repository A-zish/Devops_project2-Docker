
FROM centos:latest 
MAINTAINER: ashish dwivedi 
Run yum install -y httpd \ zip \ unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/rento.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip rento.zip
RUN cp -rvf markups-rento/* .
RUN rm -rf -MACOSX markups-rento rento.zip
CMD["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
