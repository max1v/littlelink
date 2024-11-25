FROM dunglas/frankenphp

RUN install-php-extensions \
    pcntl \
    pgsql \
    pdo_pgsql \
    pdo
# Add other PHP extensions here...

COPY . /app

ENTRYPOINT ["php", "artisan", "octane:frankenphp"]
