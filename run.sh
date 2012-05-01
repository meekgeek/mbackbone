#!/bin/bash

killPrevious(){
for X in `ps -ax | grep 'Chrome --allow' | awk {'print $1'}`; do
  kill $X;
done
}

killPrevious;

BASEDIR=$(dirname $0)

cd $BASEDIR;

# The ones included here disable the refresh throttling and enable vertical tabs
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --allow-file-access-from-files --allow-file-access --user-data-dir=$BASEDIR/.chromeprofile src/index.html &