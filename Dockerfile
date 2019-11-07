FROM ruby:2.5.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev node.js
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
ENV Bundler version 2.0.2
RUN gem install bundler && bundle
COPY . /myapp
