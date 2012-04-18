#!/bin/sh
# Reapplies the stacked three-branch architecture: master => config => bundle.

# abort if any shell commands fail
set -e

# ensure that working tree is clean
git rebase HEAD

# reapply stacked three-branch architecture
git branch -v # for user's reference
base=
for branch in master config bundle; do
  if test -n "$base"; then
    git checkout $branch
    commit=$(git rev-parse --short HEAD)
    if ! git rebase "$base"; then
      while test -d .git/rebase-apply; do
        git rebase --skip
      done
      git diff "$commit" # sanity check
    fi
  fi
  base=$branch
done
git branch -v # for user's reference
