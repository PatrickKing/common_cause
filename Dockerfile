# syntax=docker/dockerfile:1

# Adapted from: https://docs.docker.com/samples/rails/

FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm
RUN npm i -g yarn
WORKDIR /common_cause
COPY Gemfile /common_cause/Gemfile
COPY Gemfile.lock /common_cause/Gemfile.lock
RUN bundle install

# Container start script
COPY entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]

