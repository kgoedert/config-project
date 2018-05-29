FROM jboss/wildfly:12.0.0.Final

ADD execute_cli.sh /opt/jboss/wildfly/cli/execute_cli.sh
ADD commands.cli /opt/jboss/wildfly/cli/commands.cli
ADD start.sh /opt/jboss/start.sh

USER root
RUN yum -y install unzip
RUN yum -y install wget
RUN chown -R jboss:jboss /opt/jboss
RUN chmod 777 /opt/jboss/start.sh

USER jboss

RUN  mkdir -p /opt/jboss/wildfly/modules/system/layers/base/com/mysql/main  
COPY module.xml /opt/jboss/wildfly/modules/system/layers/base/com/mysql/main
COPY mysql-connector-java-5.1.21-bin.jar /opt/jboss/wildfly/modules/system/layers/base/com/mysql/main

RUN sh /opt/jboss/wildfly/cli/execute_cli.sh

RUN rm -rf /opt/jboss/wildfly/standalone/configuration/standalone_xml_history

EXPOSE 8080
EXPOSE 8787

VOLUME [ "/opt/jboss/wildfly/standalone/deployments" ]
VOLUME [ "/opt/jboss/wildfly/standalone/log" ]

CMD ["/opt/jboss/start.sh"]