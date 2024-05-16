# Stage 1: Build dependencies
FROM ruby:3.0-slim

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install --quiet

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
