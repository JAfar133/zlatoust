#!/bin/bash
docker-compose -p zlatoust-local -f postgres/docker-compose.yml --env-file .env down
