FROM ruby:latest

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y nodejs

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler
RUN bundle install --jobs 20 --retry 5

COPY . ./

EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b", "0.0.0.0"]
