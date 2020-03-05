#!/usr/bin/env bash

git checkout --orphan latest_branch;
git add -A;
if [[ -z "$1" ]]; then
	release = $(cat releaseGit);
	if [[ -z "$release" ]]; then
		release = "0.0";
		echo "empty";
	fi
	release = "$release 1";
	echo $release > "releaseGit";
	git commit -am "release$release";
else 
	git commit -am "release$1";
	echo $1 > "releaseGit";
fi
git branch -D master;
git branch -m master;
git push -f origin master;
