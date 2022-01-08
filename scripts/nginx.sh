#!/bin/sh

echo "Checking for env var API_SERVICE_NAME"
if [ ! -z "${API_SERVICE_NAME}" ]; then
    echo "Editing nginx config file for %%API_SERVICE_NAME%%, replace with ${API_SERVICE_NAME}"
    sed -i -e "s|%%API_SERVICE_NAME%%|${API_SERVICE_NAME}|g" /etc/nginx/conf.d/default.conf
fi
# echo "Starting runit"
# runsvdir /etc/service

# echo "Start default /docker-entrypoint.sh"
# /docker-entrypoint.sh nginx
