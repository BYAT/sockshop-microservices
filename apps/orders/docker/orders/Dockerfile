from bryandollery/maven-repo as build

arg rebuild

run mvn clean package -DskipTests

FROM weaveworksdemos/msd-java:jre-latest

WORKDIR /usr/src/app
COPY target/*.jar ./app.jar

RUN     chown -R ${SERVICE_USER}:${SERVICE_GROUP} ./app.jar

USER ${SERVICE_USER}

ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./app.jar", "--port=80"]

FROM weaveworksdemos/msd-java:jre-latest

WORKDIR /usr/src/app
COPY *.jar ./app.jar

RUN	chown -R ${SERVICE_USER}:${SERVICE_GROUP} ./app.jar

USER ${SERVICE_USER}

ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./app.jar", "--port=80"]
