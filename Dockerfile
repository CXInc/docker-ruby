FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

ADD http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.5.tar.gz /tmp/
RUN cd /tmp && \
    tar -xzf ruby-2.1.5.tar.gz && \
    cd ruby-2.1.5 && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf ruby-2.1.5 && \
    rm -f ruby-2.1.5.tgz && \
    gem update --system && \
    gem install bundler

