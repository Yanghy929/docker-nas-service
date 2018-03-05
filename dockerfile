FROM alpine:edge

LABEL maintainer="yu929" version="1.0"

RUN apk update \
      && apk --no-cache upgrade \
      && apk add --no-cache aria2 \
      && mkdir -p /root/aria2/tmp \
      && mkdir -p /root/downloads \
      && touch /root/downloads/aria2.session
      
COPY conf/aria2.conf /root/aria2/tmp/aria2.conf
COPY conf/run.sh /root/run.sh


