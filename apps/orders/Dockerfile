FROM maven:3-jdk-8 as build
WORKDIR /tmp

copy src /tmp/src
copy pom.xml /tmp/

run mvn clean package

FROM weaveworksdemos/msd-java:jre-latest

COPY --from=build /tmp/target/orders.jar /orders.jar

run chmod a+rx ./orders.jar

WORKDIR /


USER ${SERVICE_USER}
ENTRYPOINT ["/usr/bin/java","-jar","./orders.jar", "--port=80"]
