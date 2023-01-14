FROM ruby:3.1.0

WORKDIR /app
ENV RAILS_ENV production
ENV BUNDLE_DEPLOYMENT true
ENV BUNDLE_PATH vendor/bundle
ENV BUNDLE_WITHOUT development:test

RUN gem update --system && gem install bundler:2.1.4

RUN apt-get update -qq

COPY Gemfile Gemfile.lock .

RUN bundle install

COPY . /app/

EXPOSE 3000
CMD /bin/sh -c "bundle exec rails s -p 80 -e production -b 0.0.0.0"

