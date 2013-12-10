#!/bin/bash

upload() {
	outputPath=${rootPath}/output
	pelican -q -s settings.py

	cd $outputPath
	cp ../favicon.ico favicon.ico
	cp ../robots.txt robots.txt
	cp -R ../uploads/ uploads/
	find . -name '*.DS_Store' -type f -delete || echo "Error deleting .DS_Store files."
	echo "kevinyap.ca" > CNAME

	printf "\e[0;32mSite generated successfully.\e[0m\n"

	cd $rootPath
	commitHash=$(git rev-parse HEAD)

	cd $outputPath
	git checkout master
	git add -A
	wait && read -p "Extended commit message: " commitMessage
	if [ -z "$commitMessage" ]; then
		git commit -m "Generated by $commitHash"
	else
		git commit -m "Generated by $commitHash" -m "$commitMessage"
	fi
	git push
}

dev() {
	outputPath=${rootPath}/dev
	pelican -s devsettings.py

	cd $outputPath
	cp ../favicon.ico favicon.ico
	cp -R ../uploads/ uploads/
	printf "\e[0;32mSite generated successfully.\e[0m\n"
	printf "Local IP address: "
	ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' # http://stackoverflow.com/a/13322549/239076
	python -m SimpleHTTPServer
	cd $rootPath
	rm -rf dev
}

# Implpementation

rootPath="$HOME/kevinyap.ca"
cd $rootPath

if [[ $1 = "-d" ]]; then
	dev
elif [[ $1 = "-u" ]]; then
	upload
else
	read -n1 -p "Development or upload site? [D/U] " input
	printf "\n"

	case $input in
	  d|D)
	    dev ;;
	  u|U)
	    upload ;;
	  *)
	    printf "Unknown input.\n"
	    exit 1
	esac
fi
