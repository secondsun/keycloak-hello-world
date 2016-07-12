FROM jboss/wildfly:10.0.0.Final

ENV KEYCLOAK_VERSION 2.0.0.Final

## From Aerogear/wildfly
# Run everything below as root user
USER root

# Clean the metadata
RUN yum install -y unzip wget && yum -q clean all


# Rename the original configuration file
RUN mv $JBOSS_HOME/standalone/configuration/standalone-full.xml $JBOSS_HOME/standalone/configuration/standalone.xml


# Add the certificate.sh script into $JBOSS_HOME/standalone/configuration/certs

# Switch to $JBOSS_HOME/configuration/certs

# Execute the script to generate self signed certificates

# Switch to the working dir /opt/jboss/wildfly
WORKDIR /opt/jboss/wildfly

# Add a management user named 'admin' 
RUN /opt/jboss/wildfly/bin/add-user.sh -u admin -p admin --silent
# expose debug port

## From keycloak/adapter-wildfly
WORKDIR /opt/jboss/wildfly

RUN curl -L https://downloads.jboss.org/keycloak/$KEYCLOAK_VERSION/adapters/keycloak-oidc/keycloak-wildfly-adapter-dist-$KEYCLOAK_VERSION.tar.gz | tar zx

WORKDIR /opt/jboss

# Standalone.xml modifications.
RUN sed -i -e 's/<extensions>/&\n        <extension module="org.keycloak.keycloak-adapter-subsystem"\/>/' $JBOSS_HOME/standalone/configuration/standalone.xml && \
    sed -i -e 's/<profile>/&\n        <subsystem xmlns="urn:jboss:domain:keycloak:1.1"\/>/' $JBOSS_HOME/standalone/configuration/standalone.xml && \
    sed -i -e 's/<security-domains>/&\n                <security-domain name="keycloak">\n                    <authentication>\n                        <login-module code="org.keycloak.adapters.jboss.KeycloakLoginModule" flag="required"\/>\n                    <\/authentication>\n                <\/security-domain>/' $JBOSS_HOME/standalone/configuration/standalone.xml



EXPOSE 8787
EXPOSE 9990
EXPOSE 8080
EXPOSE 8443

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "--debug"]

