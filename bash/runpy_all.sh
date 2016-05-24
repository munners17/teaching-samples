#!/bin/bash
# Run all python scripts in the current directory, the subprocess
# will prompt for any keyboard input.

for pyfile in *.py
do
	echo "Now running $pyfile"
	python "$pyfile"
done
