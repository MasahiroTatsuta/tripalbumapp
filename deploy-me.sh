#!/bin/bash

cd /var/www/tripalbum/ && git reset --hard origin/master && docker-compose run web bundle exec bundle install --path vendor/bundle --without test development && docker-compose run web bundle exec rails assets:precompile && docker-compose up -d
