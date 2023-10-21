FROM openjdk:11-jdk-slim

WORKDIR /app

COPY mvnw .
COPY .mvn .mvn

COPY pom.xml ./
COPY src ./src

RUN ./mvnw package -DskipTests

CMD java -jar rest-java-project-0.1.0.jar
LABEL maintainer="KenaG <kenagetch11@gmial.com>"
EXPOSE 8080