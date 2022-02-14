FROM php:8.0-apache
RUN a2enmod rewrite
RUN a2enmod headers

FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN apk update && apk add bash
