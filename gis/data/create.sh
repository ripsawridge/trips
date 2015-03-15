#!/bin/bash
set -x # echo on

# -a append
# -l store in lat/long
# -k use hstore for columns not in other tables
# -i create indexes
# -b bbox
export PGPASS=postgres
export PROJ_LIB=/opt/local/share/proj
osm2pgsql --create --database MunichComo -Upostgres -Hlocalhost -b9.538,46.814,11.171,47.571 -l -k austria-latest.osm.pbf
osm2pgsql --append --database MunichComo -Upostgres -Hlocalhost -b9.075,46.15,10.142,46.91 -l -k switzerland-latest.osm.pbf
osm2pgsql --append --database MunichComo -Upostgres -Hlocalhost -b8.914,45.73,10.05,46.6 -l -k italy-latest.osm.pbf

# now you need to add the primary key by running add_primary_key.sql
