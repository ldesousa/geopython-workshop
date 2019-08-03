# Doing Geospatial in Python

With a low barrier to entry and large ecosystem of tools and libraries, Python is the lingua franca for geospatial development. Whether you are doing data acquisition, processing, publishing, integration or analysis, there is no shortage of solid Python tools to assist in your daily workflows.

This workshop will provide an introduction to performing common GIS/geospatial tasks using Python geospatial tools such as OWSLib, Shapely, Fiona/Rasterio, and common geospatial libraries like GDAL, PROJ, pycsw, as well as other tools from the geopython toolchain. Manipulate vector/raster data using Shapely, Fiona and Rasterio. Publish data and metadata to OGC web services using pygeoapi, pygeometa, pycsw, and more. Visualize your data on a map using Jupyter and Folium. Plus a few extras in between!

The workshop is provided using the Jupyter Notebook environment with Python 3.

## Requirements

The workshop uses [Jupyter Notebooks](https://jupyter.org).  Jupyter is
an interactive development environment suitable for documenting and reproducing
workflows using live code.

As the installation of all dependencies on all platforms (Windows, Mac, Linux)
can be quite involved and complex this workshop provides all components 
within a [Docker](https://docker.org) image.

In addition, geospatial web services like [pygeoapi](https://pygeoapi.io)
and [pycsw](https://pycsw.org) in this workshop are provided by Docker images.

The core requirement is to have [Docker](https://docker.org) and [Docker Compose](https://docs.docker.com/compose/) installed
on the system.  Once you have Docker and Docker Compose installed you will be
able to install the workshop without any other dependencies.

### Optional requirements

Users may optionally install [QGIS](https://qgis.org) as a GIS data viewer. 
QGIS is a multiplatform open source desktop application for geospatial data.

## Data

The workshop provides various sample data to illustrate Python geospatial
functionality which has been tested to cover the workshop requirements.

Having said this, please feel free to bring your own! Examples:

- data: basically anything that can be read with GDAL
- metadata: ISO, FGDC, Dublin Core or even pygeometa [MCF files](https://github.com/geopython/pygeometa/blob/master/sample.yml)

## Verifying your environment

Ensure Docker is running on your computer, then verify that the `docker`
and `docker-compose` commands are working and available:

```bash
docker version
docker-compose version
```

## Installation

```bash
curl -O https://codeload.github.com/geopython/geopython-workshop/zip/master
unzip master
cd geopython-workshop-master/workshop
# start the workshop
./geopython-workshop-ctl.sh start
# check the URL+token
./geopython-workshop-ctl.sh url

# open browser to resulting URL+token
# or if on Linux/MacOS, run:
# ./geopython-workshop-ctl.sh url | xargs open

# stop workshop
./geopython-workshop-ctl.sh stop
```

## Support

A [Gitter](https://gitter.im/geopython/geopython-workshop) channel exists for
discussion and live support from the developers of the workshop.

### Bugs and Issues

All bugs, enhancements and issues can be reported on [GitHub](https://github.com/geopython/geopython-workshop/issues).
