FROM ruby:2.5.8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /heroes-api
WORKDIR /heroes-api
ADD Gemfile /heroes-api/Gemfile
ADD Gemfile.lock /heroes-api/Gemfile.lock
RUN bundle install
ADD . /project