# Eureka Discover Service
This is the Eureka discovery service for registering internal api.
This is used for client side load balancing and looking up services.

Run locally with the Eureka profile:
```
mvn spring-boot:run -Dspring-boot.run.arguments="--spring.profiles.active=eureka"
```

```
SPRING_PROFILES_ACTIVE=eureka ./gradlew bootRun
```
Docker build:
```
docker build . -t sonamsamdupkhangsar/discoveryservice
```

Docker run with the Eureka profile:
```
docker run -e SPRING_PROFILES_ACTIVE=eureka -p 8761:8761 -t sonamsamdupkhangsar/discoveryservice
```
