FROM ruby:3.0.0
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
nodejs 
COPY new_academy/Gemfile* /usr/src/app/ 
WORKDIR /usr/src/app 
RUN bundle install
COPY new_academy /usr/src/app/ 
CMD ["bin/rails", "s", "-b", "0.0.0.0"] 
LABEL maintainer = "maryvi"
