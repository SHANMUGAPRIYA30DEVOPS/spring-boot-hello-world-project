# Spring Boot Hello World

**A simple Spring Boot 2.x app to send hello world message to a user**

## How to Run Application

**Start the application using any of the commands mentioned below**

> **Note:** First two commands need to run inside the root folder of this project i.e inside the **spring-boot-hello-world** folder


- **Using maven** <br/>``` mvn spring-boot:run```


- **From jar file**
  Create a jar file using '**mvn clean install**' command and then execute
  <br/>```java -jar target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar```


- **Directly from IDE**
  <br/>```Right click on HelloWorldApplication.java and click on 'Run' option```
  <br/><br/>

> **Note:** By default spring boot application starts on port number 8080. If port 8080 is occupied in your system then you can change the port number by uncommenting and updating the **server.port** property inside the **application.properties** file that is available inside the **src > main > resources** folder.

<br/>

**Send an HTTP GET request to '/hello' endpoint using any of the two methods**

- **Browser or REST client**
  <br/>```http://localhost:8080/hello```


- **cURL**
  <br/>```curl --request GET 'http://localhost:8080/hello'```


## How to Run Unit Test Cases

**Run the test cases using any of the commands mentioned below**

> **Note:** These commands need to run inside the root folder of this project i.e inside the **spring-boot-hello-world** folder

- **To run all the test cases**
  <br/>```mvn test```

  - **To run a particular test class**
  <br/>```mvn -Dtest=HelloWorldControllerTest test```
  <br/>or
  <br/>```mvn -Dtest=HelloWorldApplicationTests test```

## How to build artifact in host system (openjdk,maven needs to be installed)

git clone

mvn clean package (where pom.xml is present)

java -jar target/*.jar

## How to Run Docker commands

docker build -t saipriya98/spring_boot:0.0.1

docker run --name mycontainer -p 80:8081 saipriya98/spring_boot:0.0.1

docker logs 1a5b74c32dfd

docker exec -it a1a60c5ab922 bash

docker login -u un -p pwd

docker push saipriya98/spring_boot:0.0.1

docker pull saipriya98/spring_boot:0.0.1

docker run -d --name testcontainer -p 90:8081 saipriya98/spring_boot:0.0.1

root@ip-172-31-18-58:~# docker ps
CONTAINER ID   IMAGE                          COMMAND               CREATED          STATUS          PORTS                                   NAMES
1a5b74c32dfd   saipriya98/spring_boot:0.0.1   "java -jar app.jar"   5 seconds ago    Up 4 seconds    0.0.0.0:90->8081/tcp, :::90->8081/tcp   testcontainer
a1a60c5ab922   saipriya98/spring_boot:0.0.1   "java -jar app.jar"   11 minutes ago   Up 11 minutes   0.0.0.0:80->8081/tcp, :::80->8081/tcp   mycontainer1



