#!/bin/sh

set -e
cat /etc/nginx/templates/default.conf.template | envsubst '${PORT}' > /etc/nginx/conf.d/default.conf
nginx -g "daemon off;" &
exec "$@"
