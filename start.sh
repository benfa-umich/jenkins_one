#!/bin/sh

# Redirect logs to stdout and stderr for docker reasons.
ln -sf /dev/stdout /var/log/apache2/access_log
ln -sf /dev/stderr /var/log/apache2/error_log

# for jenkins server
ln -sf /secrets/ssl/benfa-jenkins.webplatformsnonprod.umich.edu.cert \
	/etc/ssl/certs/benfa-jenkins.webplatformsnonprod.umich.edu.cert

ln -sf /secrets/ssl/benfa-jenkins.webplatformsnonprod.umich.edu.key \
	 /etc/ssl/private/benfa-jenkins.webplatformsnonprod.umich.edu.key

# SSL secrets
ln -sf /secrets/ssl/USERTrustRSACertificationAuthority.pem /etc/ssl/certs/USERTrustRSACertificationAuthority.pem
ln -sf /secrets/ssl/AddTrustExternalCARoot.pem /etc/ssl/certs/AddTrustExternalCARoot.pem
ln -sf /secrets/ssl/sha384-Intermediate-cert.pem /etc/ssl/certs/sha384-Intermediate-cert.pem

## Rehash command needs to be run before starting apache.
c_rehash /etc/ssl/certs /secrets/ssl

#java -jar jenkins.war --httpPort=8088
