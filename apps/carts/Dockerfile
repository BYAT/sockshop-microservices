FROM maven:3-jdk-8 as build
WORKDIR /tmp

copy src /tmp/src
copy pom.xml /tmp/

run  mvn clean package

FROM weaveworksdemos/msd-java:jre-latest

WORKDIR /

COPY --from=build /tmp/target/carts.jar /carts.jar
run chmod a+rx ./carts.jar


ARG BUILD_DATE
ARG BUILD_VERSION
ARG COMMIT

LABEL org.label-schema.vendor="bashayr" \
  org.label-schema.build-date="${BUILD_DATE}" \
  org.label-schema.version="${BUILD_VERSION}" \
  org.label-schema.name="Socks Shop: Cart" \
  org.label-schema.description="REST API for Cart service" \
  org.label-schema.url="https://github.com/microservices-demo/carts" \
  org.label-schema.vcs-url="github.com:microservices-demo/carts.git" \
  org.label-schema.vcs-ref="${COMMIT}" \
  org.label-schema.schema-version="1.0"

ENTRYPOINT ["/usr/bin/java","-jar","./carts.jar", "--port=80"]
