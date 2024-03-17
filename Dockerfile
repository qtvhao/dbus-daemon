FROM debian:stable-slim

RUN set -xe; \
    apt-get update; \
    which dbus-daemon || apt-get install -y --no-install-recommends dbus; \
    which dbus-daemon; \
    apt-get purge -y --auto-remove; \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /var/cache/debconf/*-old /var/cache/debconf/*-new /var/cache/debconf/*-dist
RUN mkdir -p /var/run/dbus

