FROM centos:7

RUN yum install httpd -y

COPY *.html /var/www/html/

EXPOSE 80

ENTRYPOINT [ "httpd" ]

CMD [ "-DFOREGROUND" ]
