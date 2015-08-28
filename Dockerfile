FROM ubuntu:14.04

ENV ELM_HOME /usr/local/lib/node_modules/elm/share

RUN apt-get update && \
  apt-get install -y curl libgmp10 git-core && \
  curl -sL https://deb.nodesource.com/setup | bash - && \
  apt-get install -y nodejs && \
  npm install --global elm
RUN elm package install -y evancz/start-app
