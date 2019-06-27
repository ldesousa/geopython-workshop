#!/bin/bash

# docker run -it -p 8888:8888 geopython/jupyter:latest
jupyter notebook --ip 0.0.0.0 --no-browser --port 8888 --allow-root
