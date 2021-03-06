FROM golang:1.7

COPY . /go/src/github.com/microservices-demo/catalogue
WORKDIR /go/src/github.com/microservices-demo/catalogue
RUN ls -gAhF /go/src/github.com/microservices-demo/
RUN ls -gAhF / 
RUN go get -u github.com/FiloSottile/gvt
RUN gvt restore && \
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /catalogue github.com/microservices-demo/catalogue/cmd/cataloguesvc

FROM alpine:3.4

ENV	SERVICE_USER=bashayr \
	SERVICE_UID=10001 \
	SERVICE_GROUP=catalogue \
	SERVICE_GID=10001

RUN	addgroup -g ${SERVICE_GID} ${SERVICE_GROUP} && \
	adduser -g "${SERVICE_NAME} user" -D -H -G ${SERVICE_GROUP} -s /sbin/nologin -u ${SERVICE_UID} ${SERVICE_USER} && \
	apk add --update libcap

WORKDIR /
COPY --from=0 catalogue /catalogue
COPY images/ /images/ 

RUN	chmod +x /catalogue && \
	chown -R ${SERVICE_USER}:${SERVICE_GROUP} /catalogue /images && \
	setcap 'cap_net_bind_service=+ep' /catalogue

USER ${SERVICE_USER}

ARG BUILD_DATE
ARG BUILD_VERSION
ARG COMMIT

LABEL org.label-schema.vendor="bashayr" \
  org.label-schema.build-date="${BUILD_DATE}" \
  org.label-schema.version="${BUILD_VERSION}" \
  org.label-schema.name="Socks Shop: Catalogue" \
  org.label-schema.description="REST API for Catalogue service" \
  org.label-schema.url="https://github.com/microservices-demo/catalogue" \
  org.label-schema.vcs-url="github.com:microservices-demo/catalogue.git" \
  org.label-schema.vcs-ref="${COMMIT}" \
  org.label-schema.schema-version="1.0"

CMD ["/catalogue", "-port=80"]
EXPOSE 80
