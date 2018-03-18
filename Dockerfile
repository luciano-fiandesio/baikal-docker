# Set the base image
FROM jorge07/alpine-php:7.1

# File Author / Maintainer
MAINTAINER Luciano Fiandesio

# Version of Baikal
ENV VERSION 0.4.6

ADD baikal.sh /usr/local/bin/baikal

# Download & extract Baikal
RUN apk --no-cache add bash unzip openssl lighttpd php7-cgi php7-ctype php7-dom \
        php7-pdo_sqlite php7-pdo_mysql php7-xml php7-openssl php7-json \
        php7-xmlreader \
    && wget https://github.com/fruux/Baikal/releases/download/$VERSION/baikal-$VERSION.zip \
    && unzip baikal*.zip \
    && rm baikal*.zip \
    && chmod +x /usr/local/bin/baikal \
    && mkdir /app/baikal/html/.well-known \
	&& apk del -rf --purge openssl unzip

ADD lighttpd.conf /etc/lighttpd/lighttpd.conf

VOLUME /baikal/Specific

EXPOSE 80

ENTRYPOINT ["baikal"]
