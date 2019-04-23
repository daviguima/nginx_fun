FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y nginx

COPY meusite.com /var/www/html/

CMD ["bash"]
