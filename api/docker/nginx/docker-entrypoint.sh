#!/usr/bin/env sh
set -eu

envsubst '${PHP_HOST} ${PHP_PORT}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
