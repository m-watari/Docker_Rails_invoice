FROM ruby:2.5
# RUN apt-get update && apt-get install -y \
#     build-essential \
#     libpq-dev \
#     nodejs \
#     default-mysql-client \
#     apt-get install fonts-ipa* \
#     yarn

RUN apt-get update -qq \
    && apt-get install -y build-essential libpq-dev nodejs imagemagick libmagick++-dev \
    && apt-get install fonts-ipa* \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /RailsMySQL
COPY Gemfile Gemfile.lock /RailsMySQL/
RUN bundle install