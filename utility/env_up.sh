#!/usr/bin/env bash
docker-compose up -d
echo "NOTE: Wait for approx 5 seconds for iRODS servers to be responsive"
echo "NOTE: If using dev iRODS server, remember to first run manage.py synctaskflow in SODAR"