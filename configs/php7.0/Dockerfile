FROM php:7.0-apache

ENV VERSION_ONIG=6.9.3
ENV ONIG_BUILD_DIR=/tmp/oniguruma

RUN set -xe;\
    mkdir -p ${ONIG_BUILD_DIR}; \
    curl -Ls https://github.com/kkos/oniguruma/releases/download/v${VERSION_ONIG}/onig-${VERSION_ONIG}.tar.gz \
        | tar xzC ${ONIG_BUILD_DIR} --strip-components=1; \
    cd ${ONIG_BUILD_DIR}/; \
    ./configure; \
    make -j $(nproc); \
    make install

RUN set -xe; \
    apt-get update; \
    apt-get install --yes \
        git \
        zip unzip \
        curl \
        libzip-dev libcurl4-gnutls-dev libpng-dev libxml2-dev libjpeg-dev libfreetype6-dev \
        libmagickwand-dev; \
    docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/; \
    docker-php-ext-install pdo_mysql mysqli gd json zip intl soap mbstring exif bcmath curl sockets; \
    pecl install imagick; \
    docker-php-ext-enable imagick; \
    docker-php-ext-enable mysqli;

RUN a2enmod rewrite;

# install the ssl-cert package which will create a "snakeoil" keypair
RUN apt-get update \
 && apt-get install -y ssl-cert \
 && rm -r /var/lib/apt/lists/*

# enable ssl module and enable the default-ssl site
RUN a2enmod ssl \
 && a2ensite default-ssl
