FROM 	bryandollery/maven-repo as build

ARG 	rebuild
RUN     pwd
RUN     ls -gAhF
RUN 	git clone https://github.com/BYAT/sockshop-microservices.git && \
    cd sockshop-microservices/apps/orders && \
    mvn clean package -DskipTests
RUN     mkdir app
FROM weaveworksdemos/msd-java:jre-latest

WORKDIR /root/sockshop-microservices/apps/orders
COPY *.jar ./app.jar



ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./app.jar", "--port=80"]
