FROM ubuntu:14.04

MAINTAINER Bruz Marzolf, bruz@cx.com

RUN apt-get update
RUN apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

ADD http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p481.tar.gz /tmp/
RUN cd /tmp && \
    tar -xzf ruby-2.0.0-p481.tar.gz && \
    cd ruby-2.0.0-p481 && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf ruby-2.0.0-p481 && \
    rm -f ruby-2.0.0-p481.tgz

RUN gem update --system
RUN gem install bundler
