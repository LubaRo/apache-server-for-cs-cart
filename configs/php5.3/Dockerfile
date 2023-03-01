FROM nibrev/php-5.3-apache

# RUN set -xe; \
#     apt-get update;
    # docker-php-ext-install pdo_mysql mysqli gd json zip intl soap mbstring exif bcmath curl sockets; \
    # pecl install imagick;

RUN a2enmod rewrite;

# install the ssl-cert package which will create a "snakeoil" keypair
# RUN apt-get update \
#  && apt-get install -y ssl-cert \
#  && rm -r /var/lib/apt/lists/*

# enable ssl module and enable the default-ssl site
# RUN a2enmod ssl \
#  && a2ensite default-ssl
