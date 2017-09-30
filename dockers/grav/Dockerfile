FROM php:7-apache

VOLUME /var/www/html

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y \
    wget \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    libmemcached-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && pecl install memcached \
    && docker-php-ext-enable memcached

RUN apt-get update \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip

RUN apt-get update \
    && apt-get install -y unzip

RUN mkdir /usr/src/grav-data \
    && chown -R www-data:www-data /usr/src/grav-data
ADD ./data /usr/src/grav-data

COPY grav-admin-v1.3.4.zip .
RUN unzip -d /usr/src grav-admin-v1.3.4.zip \
    && rm grav-admin-v1.3.4.zip \
    && chown -R www-data:www-data /usr/src/grav-admin

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]

ENTRYPOINT ["docker-entrypoint.sh"]
WORKDIR /var/www/html

CMD ["apache2-foreground"]
