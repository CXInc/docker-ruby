FROM ruby:2.2.3

# Set default encoding to UTF-8, otherwise it will be US-ASCII
ENV RUBYOPT=-Ku

RUN apt-get update && apt-get install -qy vim
