#!/bin/bash
docker stop gamebox
docker rm gamebox
docker-compose pull gamebox-server
docker-compose up -d
