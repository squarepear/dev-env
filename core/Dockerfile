FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  git \
  curl \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /home/dev