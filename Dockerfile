FROM jenkins:lts

# In image file, 
# ENV JENKINS_HOME /var/jenknins_home
COPY ./Jenkinsfile /var/jenkins_home

EXPOSE 8080
EXPOSE 8443

#COPY start.sh /usr/local/bin
#RUN chmod 755 /usr/local/bin/start.sh
#CMD /usr/local/bin/start.sh
