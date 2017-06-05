FROM alpine:3.6

RUN apk add --no-cache squid python

COPY data/squid.conf /etc/squid/squid.conf
COPY data/run.sh /run.sh

CMD ["/run.sh"]
