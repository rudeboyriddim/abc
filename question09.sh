#!/bin/bash
git branch branch1
git checkout branch1
echo "This is file3" > file3
git add file3
git commit -m "Add file3 in branch1"
