#!/bin/bash
git checkout main
git branch branch1
git branch branch2

# Configure branch1
git checkout branch1
rm -rf dir1/dir2
mv dir1/dir2/foo dir1/
rm -rf dir3/bar_copy
touch newfile1
git add .
git commit -m "Configure branch1 as required"

# Configure branch2
git checkout branch2
mv dir1/dir2/foo dir1/dir2/foo_modified
mkdir -p dir1/dir3
touch dir1/dir3/newfile2
git add .
git commit -m "Configure branch2 as required"
