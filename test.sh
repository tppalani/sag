#!/bin/sh

STATUS=$(git status | tail -1)
if [ "$STATUS" = "nothing to commit, working tree clean" ]
then
        echo "pusing"
                echo "pused"
        elif [ "$STATUS" = "no changes added to commit (use \"git add and/or git commit -a\")" ]; then

                echo "nothing to commit, working tree clean"

fi

