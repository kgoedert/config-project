#!/bin/bash

rm -rf /opt/jboss/wildfly/standalone/log
rm -rf /opt/jboss/wildfly/standalone/tmp
rm -rf /opt/jboss/wildfly/standalone/data
/opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0 -c standalone-ee8.xml --debug
