FROM ubuntu:14.04

WORKDIR /app

ADD . /app

USER root

RUN apt-get update

RUN apt-get install --no-install-recommends xdg-utils

RUN apt-get install -y --no-install-recommends links2

RUN xdg-open index.html