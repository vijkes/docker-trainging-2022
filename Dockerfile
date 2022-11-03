FROM centos:7
RUN yum install httpd -y
WORKDIR /var/www/html
COPY /tmp/hi.txt bye.html
RUN echo "welcome message" > index.html
CMD httpd
