FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
		libfreetype-dev libjpeg62-turbo-dev libpng-dev \
        libmemcached-dev libssl-dev zlib1g-dev
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install -j$(nproc) gd
RUN pecl install redis-5.3.7
RUN pecl install memcached-3.2.0
RUN pecl install xdebug-3.2.1
RUN docker-php-ext-enable redis xdebug memcached
RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
#RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
