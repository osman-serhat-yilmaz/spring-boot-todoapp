FROM openjdk:8
EXPOSE 8080
ADD target/spring-boot-todo-docker.jar spring-boot-todo-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-todo-docker.jar"]