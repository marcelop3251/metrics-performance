#!/bin/bash

cd registry-spring/
sh gradlew clean build
cd ..
docker-compose -f docker-compose-spring.yml build
docker-compose -f docker-compose-spring.yml up &



