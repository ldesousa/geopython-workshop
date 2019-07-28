#!/bin/bash

PROGRAM_NAME=$(basename $0)

USAGE="Usage: $PROGRAM_NAME <start|stop|url>"

if [ "$#" -ne 1 ]; then
    echo $USAGE
    exit 1
fi

if [ $1 == "start" ]; then
    $0 stop
    docker-compose up -d
elif [ $1 == "stop" ]; then
    docker-compose stop
    docker-compose rm --force
elif [ $1 == "url" ]; then
    docker logs geopython-workshop-jupyter 2>&1 | grep "    or http" | sed 's/or //'
else
    echo $USAGE
fi
