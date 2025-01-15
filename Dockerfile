# base img
FROM openjdk:8-jdk-alpine

# maintainer info
LABEL maintainer="www.github.com/chetanchandane"

# add volume pointing to /tmp
VOLUME /tmp

# make sure to expose port 8080( or customise according to your application)
EXPOSE 8080

# jar file
ARG JAR_FILE=target/*.jar

#copy jar file, or can also use ADD command
# ADD ${JAR_FILE} app.jar
COPY ${JAR_FILE} spring-boot-rest-api-todo.jar

# finally, run jar file
ENTRYPOINT ["java","-jar","/spring-boot-rest-api-todo.jar"]


