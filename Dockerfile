FROM ruby:3.0.2-bullseye

RUN apt-get update && \
        curl -fsSL https://deb.nodesource.com/setup_current.x | bash - && \
        apt-get install -y nodejs
