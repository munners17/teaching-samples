#!/bin/bash
# Unzip all zip files in the current directory

for zipfile in *.zip
do
	# create a directory name from the zip file name without the zip extension
	dirname=${zipfile%.*}
	echo "Creating $dirname"
	# make the directory, then unzip into it
	mkdir $dirname
	unzip $zipfile -d $dirname
done
