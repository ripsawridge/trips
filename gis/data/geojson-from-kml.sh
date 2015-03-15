#!/bin/bash
set -x # echo on

# This script is useful for getting lines drawn in Google Earth into QGIS,
# which seems to like to import geojson much better than KML.

fname=$(basename $1)
n=${fname%.*}
ogr2ogr -f "GeoJSON" $n.geojson $1
echo 'wrote file $n'
