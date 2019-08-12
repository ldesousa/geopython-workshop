# Services

This directory provides support for Section 09 - Publishing.  The basic
idea is to allow for updating pygeoapi or pycsw service configurations from
locally volume mounted configuration files which then, on docker container
restart, will reflect updates made.

## Publishing Data

Basic workflow:

* edit [pygeoapi configuration](pygeoapi-config.yml)
* restart docker container with `docker restart geopython-workshop-pygeoapi`
* view updates via http://localhost:5000

## Publishing Metadata

Basic workflow:

* edit [pycsw configuration](pycsw-config.yml)
* restart docker container with `docker restart geopython-workshop-pycsw`
* view updates via http://localhost:8001
