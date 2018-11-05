#!/usr/bin/env bash
echo "Opening shell on sodar_irods as user irods"
docker exec -it -u irods sodar_irods /bin/bash
