#
# modx-ranp : MODX Revolution, alpine, nginx, php-fpm
#
FROM alpine:3.1
MAINTAINER Gildas NOEL <g.noel@ackwa.fr>

#
# Common tools
#
RUN apk add --update wget zip

#
# NGINX web server
#
RUN  apk add --update nginx 
RUN  mkdir /tmp/nginx
COPY nginx.conf /etc/nginx/nginx.conf

#
# PHP FastCGI Process Manager
#
RUN apk add --update php-fpm php-pdo_mysql php-curl php-json php-xml php-zlib php-gd

#
# Supervisord
#
RUN  apk add --update supervisor
COPY supervisord.ini /etc/supervisor.d/supervisord.ini

#
# MODX
#
COPY modx.sh /tmp/modx.sh
RUN  sh /tmp/modx.sh && rm /tmp/modx.sh

#
# Container configuration
#
EXPOSE 80
VOLUME /home/modx

#
# Start...
#
CMD ["supervisord", "-c", "/etc/supervisord.conf", "-n"]
