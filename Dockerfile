FROM ruby:alpine

# install APK packages
RUN apk add \
    build-base \
    linux-headers \
    git \
    openssl-dev \
    tzdata \
    postgresql-dev \
    vips \
    nodejs \
    npm

# update gems
RUN gem update

# install Yarn
RUN npm install -g yarn

# install Rails
RUN gem install rails
