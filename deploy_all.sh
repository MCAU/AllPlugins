#!/bin/bash

# Make sure we're up-to-date first
git pull
git submodule update --init *

for plugin in `ls -d */`; do echo $plugin; cd $plugin; ant deploy; cd ..; done
