#!/bin/bash

CALIBRATE="/usr/local/bin/calibrate"
rm -f $CALIBRATE 
ln -s ./bin/calibrate.sh $CALIBRATE

if type "go" > /dev/null; then
  echo "building calc-noise.go"
  go build calc-noise.go
  ls -al calc-noise
fi

