FROM php:7.2-alpine

USER root

RUN apk update && apk add libcap curl
COPY index.php /var/www/html/

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "/var/www/html/index.php"]
