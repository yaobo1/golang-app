FROM google/golang
MAINTAINER Jack.Wong "huangshuo@intra.nsfocus.com"

# Build app
WORKDIR /gopath
ENV GOPATH /gopath
ADD . /gopath/src/

RUN go build /gopath/src/main.go

# EXPOSE 80
CMD ["/gopath/bin/main”]
