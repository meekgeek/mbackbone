#!/bin/bash

BASEDIR=$(dirname $0)

cd $BASEDIR;

node tools/r.js -o src/js/app.build.js 

rm -rf release/templates
rm -rf release/js/views
rm -rf release/js/models
rm -rf release/js/collections
rm release/js/app.build.js
rm release/js/app.js
rm release/js/boilerplate.js
rm release/js/router.js