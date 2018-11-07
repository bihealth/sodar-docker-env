#!/usr/bin/env bash
curl -X POST -H "Content-Type: application/json" -d '{"test_mode": 1}' 0.0.0.0:5005/cleanup
echo
