FROM ruby:4.0.6

RUN apt-get update -qq && apt-get install -y libpq-dev && apt-get clean
RUN useradd -ms /bin/bash artworks
WORKDIR /usr/src/app/
COPY . /usr/src/app/
RUN chown -R artworks:artworks .
RUN chmod +x entrypoint.sh
USER artworks
RUN bundle install
