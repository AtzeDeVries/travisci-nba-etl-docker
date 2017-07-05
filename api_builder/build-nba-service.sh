#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <target> (install-service/install-etl)" >&2
  exit 1
fi


echo "Entering build directory"
cd /source/nl.naturalis.nba.build

echo "Adding build.v2.properties"
cp /build.v2.properties ./

echo "Kickof build"
ant $1

if [ $? -eq 0 ]
then
  echo "Successfully ran $1"
  exit 0
else
  echo "Error building $1"
  exit 1
fi
