FROM maven:3-openjdk-17-slim as build

WORKDIR /app

COPY pom.xml ./
COPY src ./src

RUN ["mvn", "clean", "install"]

FROM openjdk:16
WORKDIR /app
COPY --from=build /app/target/discovery-service-1.0-SNAPSHOT.jar /app/discovery-service.jar
EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "/app/account-rest-service.jar"]

LABEL org.opencontainers.image.source https://github.com/sonamsamdupkhangsar/discovery-service