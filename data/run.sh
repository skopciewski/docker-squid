#!/bin/sh

chown -R squid:squid /var/cache/squid
squid -z
sleep 5
squid -N
