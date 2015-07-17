FROM gliderlabs/alpine:3.2

RUN apk-install squid python

COPY data/squid.conf /etc/squid/squid.conf
COPY data/run.sh /run.sh

CMD ["/run.sh"]
