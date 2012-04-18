#!/bin/sh
# Replays local commits atop the newest changes from upstream.

# abort if any shell commands fail
set -e

# ensure that working tree is clean
git rebase HEAD

# download new commits from upstream
git remote show upstream >/dev/null ||
git remote add upstream git://github.com/billinux/vim-get.git
git fetch upstream

# rebase current branch atop upstream
commit=$(git rev-parse --short HEAD)
branch=$(basename $(git symbolic-ref HEAD))

if ! git rebase "upstream/$branch"; then
  cat <<EOF
+-------------------------IMPORTANT!----------------------------+
|                                                               |
| Some of YOUR COMMITS WERE DISCARDED to solve merge conflicts. |
| But rest assured, THEY STILL EXIST in Git history at $commit. |
|                                                               |
| You can UNDO THE UPGRADE at any time by running this command: |
|                 git reset --hard $commit                      |
|                                                               |
+-------------------------IMPORTANT!----------------------------+

EOF

  # discard user's conflicting commits
  while test -d .git/rebase-apply; do
    git rebase --skip || true
  done
fi
