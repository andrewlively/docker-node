FROM ubuntu:xenial

RUN apt-get -qq update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

RUN apt-get remove -y curl && rm -rf /var/lib/apt/lists/*

