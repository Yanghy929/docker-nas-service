FROM alpine

LABEL maintainer="yu929" version="1.0"

RUN apk add --no-cache aria2 \
      && mkdir -p /root/aria2/tmp \
      && mkdir -p /root/downloads \
      && mkdir -p /root/cert
      

COPY conf/aria2.conf /root/aria2/aria2.conf
COPY conf/run.sh /root/run.sh

RUN chmod +x /root/run.sh

VOLUME ["/root/aria2/","/root/aria2/tmp/","/root/downloads/","/root/cert/"]

EXPOSE 6800 6900 6999

CMD /root/run.sh


