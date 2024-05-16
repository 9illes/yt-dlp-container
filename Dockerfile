FROM alpine:edge

RUN set -xe \
    && apk add --no-cache --update yt-dlp \
    && rm -rf /var/cache/apk/*

VOLUME /home/alpine/downloads/ # specify at runtime
WORKDIR /home/alpine/downloads/

ENTRYPOINT ["yt-dlp"]