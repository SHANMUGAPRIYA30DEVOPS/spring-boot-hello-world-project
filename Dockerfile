FROM openjdk:11

LABEL project spring_boot

MAINTAINER shammymit@gmail.com

RUN apt-get update

RUN mkdir -p /applis/project

WORKDIR /applis/project

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]
