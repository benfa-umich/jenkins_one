FROM jenkins:lts

# In image file, 
# ENV JENKINS_HOME /var/jenknins_home
#COPY ./Jenkinsfile /var/jenkins_home

COPY config.xml /var/lib/jenkins/config.xml

EXPOSE 8080
EXPOSE 8443

COPY start.sh /usr/local/bin
#RUN chmod 755 /usr/local/bin/start.sh
#CMD /usr/local/bin/start.sh

# do here what start.sh would do
RUN ln -sf /secrets/ssl/AddTrustExternalCARoot.pem /etc/pki/tls/certs/AddTrustExternalCARoot.pem
RUN ln -sf /secrets/ssl/USERTrustRSACertificationAuthority.pem /etc/pki/tls/certs/USERTrustRSACertificationAuthority.pem
RUN ln -sf /secrets/ssl/benfa-jenkins.webplatformsnonprod.umich.edu.cert /etc/pki/tls/certs/benfa-jenkins.webplatformsnonprod.umich.edu.cert
RUN ln -sf /secrets/ssl/benfa-jenkins.webplatformsnonprod.umich.edu.key /etc/pki/tls/private/benfa-jenkins.webplatformsnonprod.umich.edu.key
RUN ln -sf /secrets/ssl/sha384-Intermediate-cert.pem /etc/pki/tls/certs/sha384-Intermediate-cert.pem
[09:34][benfa@m-c02n313xfd58.local:~/Work/openshift/aws-nonprod/benfa-jenkins/bitbucket]

