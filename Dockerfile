#
# Dockerfile for Apache Web Server
#

FROM ubuntu:trusty

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ntp apache2 default-jdk

WORKDIR /var/www/site
CMD apachectl -D FOREGROUND

