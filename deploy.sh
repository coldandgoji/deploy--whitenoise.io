#!/bin/sh

rm -rf tmp/www
git clone https://github.com/coldandgoji/site--whitenoise.io tmp/www
cd tmp/www
bundle install
bundle exec middleman build
bundle exec middleman s3_sync
