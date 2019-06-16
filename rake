#!/bin/bash

PARAMS="$@"
CMD="cd /var/www/discourse/ && USER=discourse RUBY_GLOBAL_METHOD_CACHE_SIZE=131072 LD_PRELOAD=/usr/lib/libjemalloc.so RAILS_ENV=${RAILS_ENV:=production} bundle exec rake $PARAMS"
docker exec -it -u discourse:discourse app /bin/bash -c "$CMD"
