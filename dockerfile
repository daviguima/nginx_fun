FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y nginx

COPY meusite.com /var/www/html/
