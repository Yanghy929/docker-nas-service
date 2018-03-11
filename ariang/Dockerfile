FROM nginx:alpine

LABEL maintainer="yu929" version="1.0"

RUN mkdir -p /usr/share/nginx/html/aria-ng \
      && cd /usr/share/nginx/html \
      && wget -qO aria-ng.zip https://github.com/mayswind/AriaNg/releases/download/0.4.0/aria-ng-0.4.0.zip \
	  && unzip -q aria-ng.zip -d aria-ng \
	  && rm -f aria-ng.zip
      
VOLUME ["/root/cert/"]

EXPOSE 443


