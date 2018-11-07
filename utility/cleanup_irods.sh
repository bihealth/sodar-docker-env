#!/usr/bin/env bash
read -p "WARNING: This will wipe ALL data from the iRODS server configured in SODAR Taskflow. Are you sure? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

curl -X POST -H "Content-Type: application/json" -d '{"test_mode": 0}' 0.0.0.0:5005/cleanup
echo
