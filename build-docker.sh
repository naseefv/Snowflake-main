#!/bin/sh

DOCKERNAME=snowcicd

echo "********  BUILDING IMAGE   ********"

# Setting up the container where SF application runs
docker build --rm -t $DOCKERNAME .

echo "********   IMAGE BUILD SUCCEEDED  ********"

echo "********   INITIALIZING DOCKER CONTAINER  ********"

# Spinning up the container and passing the env file
docker run -it --rm --name $DOCKERNAME --env-file=env.list $DOCKERNAME /bin/bash

echo "********   CONTAINER EXECUTED SUCCEEDED  ********"