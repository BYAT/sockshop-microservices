FROM 	bryandollery/maven-repo as build

ARG 	rebuild

RUN 	git clone https://github.com/BYAT/sockshop-microservices.git && \
    cd /root/sockshop-microservices/apps/orders && \
    mvn clean package -DskipTests


FROM weaveworksdemos/msd-java:jre-latest

WORKDIR /usr/src/app
COPY *.jar ./app.jar

RUN	chown -R ${SERVICE_USER}:${SERVICE_GROUP} ./app.jar

USER ${SERVICE_USER}

ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./app.jar", "--port=80"]
