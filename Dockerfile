#A simple dockerfile for getting public IP Location
FROM alpine:edge
MAINTAINER Serdar.Sarioglu@mysystem.org

RUN apk update
RUN apk add curl bash
ENV IP 8.8.8.8

ENTRYPOINT ["sh", "-c", "curl -s https://ipinfo.io/${IP}/json"]
