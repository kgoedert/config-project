FROM jboss/wildfly:13.0.0.Final

EXPOSE 8080
EXPOSE 8787

VOLUME [ "/opt/jboss/wildfly/standalone/deployments" ]
VOLUME [ "/opt/jboss/wildfly/standalone/log" ]

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone-ee8.xml", "--debug"]
