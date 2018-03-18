#!/usr/bin/env ash
mkdir -p /app/baikal/Specific/db/ \
    && chown -R lighttpd. /app/baikal \
    && lighttpd -D -f /etc/lighttpd/lighttpd.conf

