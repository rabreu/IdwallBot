#!/bin/bash

LAST_BUILD_VERSION=`cat BUILD_VERSION`
CURRENT_BUILD_VERSION=`expr $LAST_BUILD_VERSION + 1`
echo $CURRENT_BUILD_VERSION > BUILD_VERSION

cp -rf ../desafio02-telegram/* .
git add .
git commit -m "build version ${CURRENT_BUILD_VERSION}"
git push
