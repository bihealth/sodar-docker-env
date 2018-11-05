#!/usr/bin/env bash
echo "Opening shell on sodar_irods_test as user irods"
docker exec -it -u irods sodar_irods_test /bin/bash
