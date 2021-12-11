FROM ruby:3.0.3

ADD . /app
WORKDIR /app
RUN gem install bundler:1.17.2
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "puma"]
