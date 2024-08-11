#!/bin/bash
git fetch origin branch3:branch3
git checkout branch2
git merge branch3
# Resolve conflicts manually if needed
git add .
git commit -m "Resolved conflicts and merged branch3 with branch2"
git branch -d branch3