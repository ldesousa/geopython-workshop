# pygeoapi

* config is mounted into Docker Container
* data is mounted under /pygeoapi/data
* [woudc-stations.geojson](data/woudc-stations.geojson) is served by `pygeoapi`

## Adding Data

* add your data file to `./data` dir (example here: [woudc-stations](data/woudc-stations.geojson))
* edit [config yml](pygeoapi-config.yml) *
* restart docker container: `docker restart geopython-workshop-pygeoapi`
* view via http://localhost:5000/collections/woudc_stations/items

e.g  for a GeoJSON file paste entry similar to:

```
    woudc_stations:
        title: woudc_stations
        description: woudc_stations
        keywords:
            - ozone
        crs:
            - CRS84
        links:
            - type: text/html
              rel: canonical
              title: information
              href: https://woudc.org
              hreflang: en-US
        extents:
            spatial:
                bbox: [-180,-90,180,90]
            temporal:
                begin: 2011-11-11
                end: now  # or empty
        provider:
            name: GeoJSON
            data: data/woudc-stations.geojson
            id_field: gaw_id

```

NB **Don't add entry to the end of config, due to a HTML formatting problem it will not be visible in table**