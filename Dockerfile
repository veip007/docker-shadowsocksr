FROM alpine
MAINTAINER smounives <smounives@outlook.com>

RUN set -ex \
    && apk add --no-cache git libsodium py-pip \
    && pip install git+https://github.com/breakwa11/shadowsocks.git@manyuser \
    && apk del --purge git

ENTRYPOINT ["/usr/bin/ssserver"]
