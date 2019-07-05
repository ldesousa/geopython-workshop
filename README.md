[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/geopython/geopython-workshop/foss4g-2019?filepath=workshop%2Fjupyter%2Fcontent%2Fnotebooks%2F01_introduction.ipynb)
# Doing Geospatial in Python

## Installation

### Requirements

The workshop requires [Docker](https://docker.com) 
and [Docker Compose](https://docs.docker.com/compose/) on your system

### Building

(We should provide the Docker Images on DockerHub and have all content 
Docker-Volume-mounted)

```bash
cd workshop/jupyter
./build.sh

```

## Running

All services are started using a [Docker Compose file](workshop/docker-compose.yml).


```bash
cd workshop
./start.sh

# Browse to http://127.0.01:8000 for workshop home page (the docs)
# Browse to http://127.0.01:8888 for workshop Jupyter Notebooks
# Browse to http://127.0.01:5000 for workshop pygeoapi service
# Browse to http://127.0.01:8001 for workshop pycsw service
# NB Possibly best if we add a frontend or use docs ("home") as entrypoint
./stop.sh

```

NB Jupyter notebook needs a **token**. The token is displayed on startup:

`http://127.0.0.1:8888/?token=<longtokenhexstring>`.

As Docker Compose may run in background you can make logging 
output visible via `docker logs --follow geopython_ws_jupyter` .

### Bugs and Issues

All bugs, enhancements and issues are managed 
on [GitHub](https://github.com/geopython/geopython-workshop/issues).

## Contact

https://gitter.im/geopython/geopython-workshop
