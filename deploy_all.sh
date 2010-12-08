#!/bin/bash

# Make sure we're up-to-date first
#git pull
#git submodule update --init *

for plugin in `ls -d */`
do
	if [ -f builders/${plugin%/}.xml ]
	then
		echo "Using custom build script"
		[ -f $plugin/build.xml ] && mv $plugin/build.xml $plugin/build.xml.old
		cp builders/${plugin%/}.xml $plugin/build.xml
		CUSTOM=true
	fi
	echo $plugin
	cd $plugin
	#ant deploy
	if [ $CUSTOM ]
	then
		# We do this so that we don't leave our custom build.xml
		# if there wasn't already one.
		echo "Removing custom build script"
		rm build.xml
		[ -f build.xml.old ] && mv build.xml.old build.xml
	fi
	cd ..
done
