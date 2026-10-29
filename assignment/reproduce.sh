#!/bin/bash
set -e

git init -b main

touch a.txt
git add a.txt
git commit -am "Initial commit"

echo hi >> a.txt
git commit -am "Add README"

echo hi >> a.txt
git commit -am "Release 1.0"

#experiment
git switch -c experiment
echo hi >> a.txt
git commit -am "Add experimental optimization"

echo hi >> a.txt
git commit -am "Try aggressive inlining"

#feature/parser
git switch -c feature/parser main
echo hi > b.txt
git add b.txt
git commit -am "Add tokenizer"

echo hi >> b.txt
git commit -am "Add error recovery"

echo hi >> b.txt
git commit -am "Wire parser into build"

#back to main
git switch main
echo hi >> a.txt
git commit -am "Add logging support"

git merge feature/parser -m "Merge feature/parser"

