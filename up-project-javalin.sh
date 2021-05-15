#!/bin/bash

cd kotlin-exposed-koin-javalin/
sh gradlew clean build
cd ..
docker-compose -f docker-compose-javalin.yml build
docker-compose -f docker-compose-javalin.yml up &



