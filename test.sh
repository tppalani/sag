#!/bin/sh

STATUS=$(git status | tail -1)
if [ "$STATUS" = "nothing added to commit but untracked files present (use \"git add\" to track)" ]
then
        echo "please add local changes"
        echo "git add"
else
        echo "Your branch is up to date with 'origin/main'"

fi
