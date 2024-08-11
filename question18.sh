#!/bin/bash
git checkout main
for branch in $(git branch -r | grep ready); do
    git merge $branch
done

# Resolve conflicts manually if needed
git add .
git commit -m "Resolved conflicts and merged ready branches with main"

for branch in $(git branch -r | grep update); do
    git checkout $branch
    git merge main
done