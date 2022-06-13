#Download base image ubuntu 22.04
FROM ubuntu:22.04

# LABEL about the custom image
LABEL maintainer="patricklee"
LABEL version="0.1"
LABEL description="This is custom Docker Image for the PHP-FPM and Nginx Services."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

# Install nginx, php-fpm and supervisord from ubuntu repository
RUN apt install -y net-tools mlocate vim tree && rm -rf /var/lib/apt/lists/* && apt clean
