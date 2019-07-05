#!/bin/bash

./stop.sh
docker-compose up -d

# Show Jupyter NB logs for URL+token
docker logs geopython_ws_jupyter
