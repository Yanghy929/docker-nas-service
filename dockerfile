FROM alpine:edge

LABEL maintainer="yu929" version="1.0"

RUN apk update \
      && apk --no-cache upgrade \
      && apk add --no-cache aria2 \
      && mkdir -p /root/aria2/tmp \
      && mkdir -p /root/downloads \
      && mkdir -p /root/cert \
      

COPY conf/run.sh /root/run.sh

RUN chmod +x /root/run.sh

VOLUME /root/aria2/tmp/
VOLUME /root/downloads/
VOLUME /root/cert/

EXPOSE 6800
EXPOSE 6881
EXPOSE 6882

CMD /root/run.sh


