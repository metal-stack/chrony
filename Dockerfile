FROM alpine:3.20

RUN apk add --no-cache chrony tzdata

ENTRYPOINT [ "/usr/sbin/chronyd", "-u", "chrony", "-d", "-x", "-L", "0"]
