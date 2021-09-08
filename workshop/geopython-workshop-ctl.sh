#!/bin/bash

PROGRAM_NAME=$(basename $0)

USAGE="Usage: $PROGRAM_NAME <start|stop|url|clean>"

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
    case "$OSTYPE" in
        cygwin*)
            alias open="cmd /c start"
            ;;
        linux*)
            alias open="xdg-open"
            ;;
        darwin*)
            alias start="open"
            ;;
    esac
    url=$(docker logs geopython-workshop-jupyter 2>&1 | grep "    or http" | sed 's/or //')
    echo $url
    open $url
elif [ $1 == "clean" ]; then
    # Remove all exited containers
    for c in $(docker ps -a -f status=exited -q)
    do
        docker rm ${c}
    done
    # And dangling images
    for i in $(docker images -f dangling=true -q)
    do
        docker rmi ${i}
    done
else
    echo $USAGE
fi
