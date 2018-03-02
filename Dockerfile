FROM tomcat:9.0-alpine
LABEL version = "1.1.3"
COPY target/petclinic.war /var/lib/jenkins/workspace/images/petclinic.war
