# syntax=docker/dockerfile:experimental
FROM maven:3-jdk-11 as build
WORKDIR /root/sockshop-microservices/orders/orders


run DOCKER_BUILDKIT=1 --mount=type=cache,id=maven,target=/root/sockshop-microservices/orders/orders.m2,sharing=shared mvn clean package
from adoptopenjdk/openjdk11:alpine

COPY --from=build /root/sockshop-microservices/orders/orders/target/orders.jar /orders.jar
RUN ls -gAhF
RUN pwd
run chmod a+rx ./orders.jar


FROM weaveworksdemos/msd-java:jre-latest


WORKDIR /root/sockshop-microservices/orders/orders
COPY *.jar /orders.jar
RUN ls

USER root
ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./orders.jar", "--port=80"]
