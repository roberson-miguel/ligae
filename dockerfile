FROM ruby:2.6.3

RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -

RUN apt-get update && \
      apt-get install -y vim nodejs
RUN npm install -g yarn

WORKDIR /ligae

ADD . /ligae

RUN bundle install