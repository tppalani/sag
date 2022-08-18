#!/bin/sh

STATUS=$(git status | tail -1)
if [ "$STATUS" = "nothing to commit, working tree clean" ]
then
        echo "pusing"
fi
