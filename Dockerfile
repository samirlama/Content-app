FROM ruby:3.0.1

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.2.15

RUN bundle install

COPY . .

EXPOSE 3000

# Start Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
