#!/bin/bash

BASEDIR=$(dirname $0)

cd $BASEDIR;

node tools/r.js -o src/js/app.build.js 

echo "cleaning up"
echo "--------------"

rm -rf release/templates
echo 'removing release/templates'
rm -rf release/js/views
echo 'removing js/views'
rm -rf release/js/models
echo 'removing js/models'
rm -rf release/js/collections
echo 'removing js/collections'
rm release/js/app.build.js
echo 'removing release/js/app.build.js'
rm release/js/app.js
echo 'removing release/js/app.js'
rm release/js/boilerplate.js
echo 'removing release/js/boilerplate.js'
rm release/js/router.js
echo 'removing release/js/router.js'
rm release/build.txt
echo 'removing release/build.txt'