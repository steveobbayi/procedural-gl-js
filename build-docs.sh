#!/bin/bash
echo "Generating documentation..."
EXPORT_DIR=src/export/
mkdir -p docs
jsdoc -t docdash \
  --configure docdash/conf.json \
  --destination docs \
  --readme README.md \
  $EXPORT_DIR/camera.js \
  $EXPORT_DIR/controls.js \
  $EXPORT_DIR/core.js \
  $EXPORT_DIR/displayLocation.js \
  $EXPORT_DIR/environments.js \
  $EXPORT_DIR/features.js \
  $EXPORT_DIR/location.js \
  $EXPORT_DIR/pause.js \
  $EXPORT_DIR/userInterface.js

./build-examples.sh
