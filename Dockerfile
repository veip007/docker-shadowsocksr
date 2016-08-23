FROM alpine
MAINTAINER smounives <smounives@outlook.com>

RUN set -ex \
    && apk add --no-cache libsodium py-pip \
    && pip install https://github.com/breakwa11/shadowsocks/archive/manyuser.zip

ENTRYPOINT ["/usr/bin/ssserver"]
