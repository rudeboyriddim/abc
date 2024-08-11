#!/bin/bash
git fetch origin branch1:branch1
git checkout main
git merge branch1
# Resolve conflicts manually if needed
git add .
git commit -m "Resolved conflicts and merged branch1 with main"