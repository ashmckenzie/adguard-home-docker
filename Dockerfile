FROM alpine
MAINTAINER Ash McKenzie <ash@the-rebellion.net>

VOLUME /data

RUN apk update && apk add bash curl ca-certificates

ADD start.sh /
ADD data/ /data/
ADD AdGuardHome/ /app/

WORKDIR /data

CMD "/start.sh"
