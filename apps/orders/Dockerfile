# syntax=docker/dockerfile:experimental
FROM maven:3-jdk-11 as build
WORKDIR /tmp

copy src /tmp/src
copy pom.xml /tmp/

run --mount=type=cache,id=maven,target=/root/.m2,sharing=shared mvn clean package

FROM weaveworksdemos/msd-java:jre-latest

COPY --from=build /tmp/target/orders.jar /orders.jar

run chmod a+rx ./orders.jar

WORKDIR /
COPY *.jar ./orders.jar


USER ${SERVICE_USER}
ENTRYPOINT ["/usr/bin/java","-jar","./orders.jar", "--port=80"]
