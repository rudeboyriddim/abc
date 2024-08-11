#!/bin/bash
git branch new-branch
git checkout new-branch
rm *.sh
echo "This is file13.txt" > file13.txt
git add file13.txt
git commit -m "Add file13.txt"
git push origin new-branch