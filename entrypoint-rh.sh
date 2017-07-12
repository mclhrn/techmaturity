#!/bin/sh
mkdir /data/tmp
scl_source rh-ruby23
export SECRET_KEY_BASE=`rake secret`
rake db:create db:migrate db:seed

exec rails s -b 0.0.0.0 -p 3000
