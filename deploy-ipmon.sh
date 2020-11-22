#!/bin/bash
docker-compose stop ipmon
docker rm $(docker ps -aqf "name=ipmon")
docker images --format="{{.ID}} {{.Repository}}" | grep ipmon | cut -f 1 -d ' ' | xargs docker rmi
docker-compose up --no-start
docker-compose start ipmon