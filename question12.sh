#!/bin/bash
git checkout branch2
git stash pop
git commit -am "Restore and commit uncommitted changes"
