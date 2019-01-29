FROM ruby:2.4.5

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
ADD . /usr/src/app
RUN bundle install --system

# Consider using a cache-buster at this point
RUN rake db:migrate

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]