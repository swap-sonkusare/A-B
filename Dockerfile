#FROM tomcat:9.0-alpine
#LABEL version = "1.1.3"
#COPY target/petclinic.war /var/lib/jenkins/workspace/images/petclinic.war
FROM anapsix/alpine-java
LABEL maintainer="swapnil@swapnil.sonkusare@merce.co"
#COPY target/petclinic.war /var/lib/jenkins/workspace/images/petclinic.war
#COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar
COPY target/petclinic.war /var/lib/jenkins/workspace/images/petclinic.war
#CMD ["java","-jar","/home/spring-petclinic-1.5.1.jar"]
cd /var/lib/jenkins/workspace/images
./build.sh
./run.sh
