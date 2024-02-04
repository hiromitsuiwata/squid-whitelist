FROM docker.io/ubuntu:22.04

RUN apt update && \
    apt install -y squid curl vim maven nodejs npm iproute2 locales-all wget openjdk-8-jdk

ENV LANG ja_JP.UTF-8
ENV TZ Asia/Tokyo
