# Datasets

The datasets within this directory originate from the 
[Natural Earth open datasets](http://www.naturalearthdata.com/) (NE) mostly
Small scale data, 1:110m. As the NE data is encoded in WGS84 (EPSG:4326), which
makes some calculations and analysis more complex, each dataset also has
a variant file that is in EPSG:3857 (Web Mercator) projection in meters.

For example: `europe_countries.gpkg` is in WGS84 and `europe_countries.3857.gpkg`
in EPSG:3857.
