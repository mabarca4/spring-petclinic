FROM --platform=linux/amd64 openjdk:8u282-jre
#MAINTAINER Marvin Abarca <mabarca4@depaul.edu>
EXPOSE 8080
COPY target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar .
ENTRYPOINT ["java", "-jar", "spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar", "--spring.profiles.active=mysql"]
