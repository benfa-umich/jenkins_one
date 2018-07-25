FROM jenkins:latest

#WORKDIR /var/www/html
#COPY . /var/www/html/

# Section that sets up Apache and Cosign to run as non-root user.
EXPOSE 8080
EXPOSE 8443

COPY start.sh /usr/local/bin
RUN chmod 755 /usr/local/bin/start.sh
CMD /usr/local/bin/start.sh
