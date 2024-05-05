FROM amazonlinux:2
ADD install.sh /opt/
ADD app.sh /opt/
RUN chmod +x /opt/*.sh
RUN ./opt/install.sh
RUN echo 'JAVA_OPTS="-Djava.security.egd=file:/dev/urandom"' >> /etc/tomcat/tomcat.conf
RUN install -d -o root -g tomcat /var/lib/tomcat/webapps/ROOT 
EXPOSE 8080
RUN ./opt/app.sh
CMD ["/usr/libexec/tomcat/server", "start"]
