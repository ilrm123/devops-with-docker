FROM amazoncorretto:8-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN ./mvnw package && adduser -D someuser && rm -rf /var/lib/apt/lists/*

FROM amazoncorretto:8-alpine

COPY --from=build-stage /usr/src/app /usr/src/app
COPY --from=build-stage /etc/passwd /etc/passwd

WORKDIR /usr/src/app

EXPOSE 8080

USER someuser

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
