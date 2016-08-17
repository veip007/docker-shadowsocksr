FROM alpine:edge
MAINTAINER smounives <smounives@outlook.com>

RUN set -ex \
    && apk add --no-cache curl git libsodium python \
    && curl -sSL https://bootstrap.pypa.io/get-pip.py | python \
    && pip install git+https://github.com/breakwa11/shadowsocks.git@manyuser \
    && apk del --purge curl git

ENTRYPOINT ["/usr/bin/ssserver"]
