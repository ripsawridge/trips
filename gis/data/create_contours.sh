#!/bin/bash
set -x # echo on

mkdir -p ./contours
for f in ./relief/*.hgt
do
    fname=$(basename $f)
    n=${fname%.*}
    gdal_contour -i 100.0 $f ./contours/$n
done
