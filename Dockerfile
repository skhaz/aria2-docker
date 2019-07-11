FROM alpine:edge

RUN apk add --no-cache aria2

RUN addgroup -S docker && adduser -S aria2 -G docker

COPY aria2.conf.default /config/aria2.conf

VOLUME /downloads

USER aria2

CMD ["/usr/bin/aria2c", "--conf-path=/config/aria2.conf"]
