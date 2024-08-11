#!/bin/bash

# Fetch all branches
git fetch --all

# Merge all branches whose names begin with 'ready' into 'main'
for branch in $(git branch -r | grep 'ready'); do
    git checkout main
    git merge --no-ff "${branch#origin/}" -m "Merged ${branch#origin/} into main"
    
    # If there are merge conflicts, resolve them manually
    if [ $? -ne 0 ]; then
        echo "Manual conflict resolution required. Resolve conflicts and commit."
        exit 1
    fi

    # Delete the branch locally and on the remote
    git branch -d "${branch#origin/}"
    git push origin --delete "${branch#origin/}"
done

# Update all branches whose names begin with 'update' to have the latest changes from 'main'
for branch in $(git branch -r | grep 'update'); do
    git checkout "${branch#origin/}"
    git merge main -m "Updated ${branch#origin/} with the latest changes from main"
    
    # Push the updated branch back to the remote
    git push origin "${branch#origin/}"
done

# Checkout back to main when done
git checkout main
