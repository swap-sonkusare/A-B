#FROM tomcat:9.0-alpine
#LABEL version = "1.1.3"
#COPY target/petclinic.war /var/lib/jenkins/workspace/images/petclinic.war

#FROM tomcat:9.0-alpine
#LABEL version = "1.1.3"
FROM anapsix/alpine-java
LABEL maintainer="swapnil@swapnil.sonkusare@merce.co"
COPY /target/helloworld.war /home2/tomcat/helloworld.war
#COPY target/petclinic.war /var/lib/jenkins/workspace/images/petclinic.war
#COPY /images/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar
#COPY target/petclinic.war /var/lib/jenkins/workspace/images/petclinic.war
#CMD ["java","-jar","/home/spring-petclinic-1.5.1.jar"]
#cd /var/lib/jenkins/workspace/images
#./build.sh
#./run.sh
#SCP -i id_rsa /target/helloworld.war root@192.168.12.111:/var/lib/jenkins/workspace/images/
#COPY /target/helloworld.war /home/helloworld.war
CMD ["java","-war","/home/helloworld.war"]
