FROM golang:1.7

RUN mkdir /app
COPY . /go/src/github.com/microservices-demo/payment/

RUN go get -u github.com/FiloSottile/gvt
RUN cd /go/src/github.com/microservices-demo/payment/ && gvt restore
RUN pwd
RUN ls -gAhF
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /app/main go/src/github.com/microservices-demo/apps/payment/cmd/paymentsvc 

CMD ["/app/main", "-port=80"]

#EXPOSE 80
