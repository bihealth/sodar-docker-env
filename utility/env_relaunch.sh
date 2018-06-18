#!/usr/bin/env bash
SCRIPT_PATH=$(dirname "$(readlink -f "$0")")
docker-compose down
docker-compose pull
docker-compose build
${SCRIPT_PATH}/env_up.sh
