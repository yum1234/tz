#!/bin/sh
set -e

git init -b main
echo "hello" > file.txt
git add file.txt
git commit -m "First commit"

echo "more" >> file.txt
git commit -am "Second commit"

git switch -c side-branch
echo "side" >other.txt
git add other.txt
git commit -m "A commit on a branch"