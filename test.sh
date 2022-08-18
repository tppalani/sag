#!/bin/sh

if [[ `git status --porcelain` ]]; then
echo "no changes added to commit (use "git add" and/or "git commit -a")"
else
  echo ""
fi
