FROM alpine:latest
MAINTAINER Anon <someone@shaddy.space>

ENV LISTEN_IP 0.0.0.0
ENV LISTEN_PORT 443
ENV SSH_HOST localhost
ENV SSH_PORT 22
ENV OPENVPN_HOST localhost
ENV OPENVPN_PORT 1194
ENV HTTP_HOST localhost
ENV HTTP_PORT 8080
ENV HTTPS_HOST localhost
ENV HTTPS_PORT 8443
ENV OTHER_HOST localhost
ENV OTHER_PORT 8388

RUN apk update && \
       apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ sslh && \
       rm -rf /var/cache/apk/*

ADD entry.sh /usr/local/bin/entry.sh
RUN chmod +x /usr/local/bin/entry.sh

ENTRYPOINT ["/usr/local/bin/entry.sh"]
