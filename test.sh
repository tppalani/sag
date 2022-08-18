#!/bin/sh

PUSH=1
STATUS=$(git status | tail -1)
if [ "$STATUS" = "nothing added to commit but untracked files present (use \"git add\" to track)" ]; then
	PUSH=0
fi

if [ "$PUSH" = "1" ]; then
	git add -u
	if [ $? -ne 0 ]; then exit 1; fi
	if [ "$1" = "" ]; then
		git commit
	else
		git commit -m "$1"
	fi
	if [ $? -ne 0 ]; then
		PUSH=0
	fi
fi

git pull
if [ $? -ne 0 ]; then exit 1; fi

if [ "$PUSH" = "1" ]; then
	git push
	exit $?
fi
