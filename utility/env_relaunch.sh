#!/usr/bin/env bash
docker login cubi-gitlab.bihealth.org:4567
docker-compose down
docker-compose pull
docker-compose build
./env_up.sh
