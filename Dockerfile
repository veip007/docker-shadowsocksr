#
# Dockerfile for ShadowsocksR
#

FROM alpine:3.4

RUN set -ex \
    && apk add --no-cache libsodium py-pip \
    && pip --no-cache-dir install https://github.com/shadowsocksr/shadowsocksr/archive/manyuser.zip

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 8388
ENV PASSWORD    p@ssw0rd
ENV METHOD      aes-256-cfb
ENV PROTOCOL    auth_sha1_compatible
ENV OBFS        http_simple_compatible
ENV TIMEOUT     300
ENV DNS_ADDR    8.8.8.8

EXPOSE $SERVER_PORT/tcp
EXPOSE $SERVER_PORT/udp

WORKDIR /usr/bin/

CMD /usr/bin/ssserver -s $SERVER_ADDR \
                      -p $SERVER_PORT \
                      -k $PASSWORD    \
                      -m $METHOD      \
                      -O $PROTOCOL    \
                      -o $OBFS        \
                      -t $TIMEOUT
