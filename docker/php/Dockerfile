FROM php:7.4-fpm

ARG APP_ENV

COPY ./docker/php/init.sh /tmp
RUN chmod +x /tmp/init.sh
RUN /tmp/init.sh

COPY ./docker/php/install.sh /tmp
RUN chmod +x /tmp/install.sh
RUN /tmp/install.sh

COPY ./docker/php/www.conf /usr/local/etc/php-fpm.d/www.conf.default
COPY ./docker/php/php.ini /usr/local/etc/php/conf.d

COPY ./docker/php/app.sh /
RUN chmod +x /app.sh
RUN /app.sh

ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB:en
ENV LC_ALL en_GB.UTF-8

#RUN apt-get autoremove --purge \
# && apt-get -y clean \
# && rm -rf /var/lib/apt/lists/*
