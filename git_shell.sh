#!/bin/bash

BASEDIR=`dirname "$0"`
cd "$BASEDIR"
git add .
git add -u
DATE=`date "+%Y-%m-%d - %H:%M:%S"`
git commit -m "$DATE"
git fsck --full
git gc --aggressive