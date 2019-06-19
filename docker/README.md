# Docker setup

```bash

# start up all workshop services
docker-compose up

# pycsw available at http://localhost:8003
# login to pycsw server instance
docker-compose exec pycsw sh

# pygeoapi available at http://localhost:5000
# login to pygeoapi server instance
docker-compose exec pygeoapi sh

# jupyter available at http://localhost:8888
# login to jupyter server instance
docker-compose exec jupyter sh
```
