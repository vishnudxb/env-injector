FROM alpine:edge

RUN apk add --no-cache vault libcap jq && \
   setcap cap_ipc_lock= /usr/sbin/vault


WORKDIR /app

CMD tail -f /etc/hosts
