#!/bin/sh

#Echo message if there is no files to commit, stage or push
    if [ "$(git status --porcelain)" ]; then
        echo "There are no files to commit, stage or push"
    fi
