#!/bin/bash
# Pull all repos in every subdirectory

# get current path, create separator and pull counter
localpath=`pwd`
sep='--*-->'
counter=0

# you are here
echo "You are here: $localpath"

# loop through each student's folder and check for their repo
for gitdir in *;
do
	# path to repo in student directory
	studentpath=$localpath/$gitdir
	# get path with located student directory
	studentdir=$(find $studentpath -type d -name 'student*')
	
	# if student path exists, go in and pull the repo
	if [[ $studentdir ]]; then
		echo
		echo "$sep Now pulling repo in $studentdir"
		git -C $studentdir pull origin master
		# increment the pull counter
		counter=$((counter+1))
	fi
done

# display end status message
echo "$counter repos were pulled locally"