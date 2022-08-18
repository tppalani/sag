#!/bin/bash

STATUS=$(git status | tail -1)
if [ "$STATUS" = "nothing to commit, working tree clean" ]
then
        echo "pusing"
		echo "pused"
		
elif [ "$STATUS" = "nothing added to commit but untracked files present (use \"git add\" to track)" ]; then
		echo "nothing to commit, working tree clean"
		
fi

