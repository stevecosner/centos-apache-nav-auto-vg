FROM centos
MAINTAINER steve

RUN yum update -y
RUN yum install httpd -y
RUN yum install git -y
RUN git clone https://github.com/BlackrockDigital/startbootstrap-scrolling-nav.git
RUN cp -r startbootstrap-scrolling-nav/. /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND
