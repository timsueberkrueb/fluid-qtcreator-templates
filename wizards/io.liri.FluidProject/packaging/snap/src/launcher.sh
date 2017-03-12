#!/bin/bash

# Ensure that the Liri Platform is connected

if [ -d $SNAP/liri-platform ]; then
  RUNTIME=$SNAP/liri-platform
  if [ ! -d $RUNTIME/usr ] ; then
    echo "You need to connect this snap to the Liri Platform snap."
    echo ""
    echo "You can do this with those commands:"
    echo "snap install liri-platform0"
    echo "snap connect $SNAP_NAME:platform liri-platform0:platform"
    exit 1
  fi
fi

# Source liri-app-launch to run the application

source $RUNTIME/bin/liri-app-launch "$@"
