# Eureka Discover Service
This is the Eureka discovery service for registering internal api.

Run locally with:
```
mvn spring-boot:run -Dspring-boot.run.arguments="--spring.profiles.active=local"
```

```
./gradlew bootRun --args="--spring.profiles.active=local"
```
Docker build:
```
docker build . -t sonamsamdupkhangsar/discoveryservice
```

Docker run with local profile:
```
docker run -e --spring.profiles.active=local -p 8761:8080 -t sonamsamdupkhangsar/discoveryservice
```