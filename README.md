docker-ruby
===========

A base image for Ruby projects.

Usage
-----

    docker pull cxops/ruby

Building
--------

    git clone git@github.com:CXInc/docker-ruby.git
    cd docker-ruby
    
    # Update the tag based on the latest Ruby version
    docker build -t cxops/ruby:2.0.0-p481 .
