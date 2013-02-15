#!/bin/sh
# Removes existing bundles whose names contain the given regular expression.

find . -type f -name '*.get' -print | grep -i "$@" | while read get; do
  # if the user agrees to remove the get file
  rm -vi "$get" </dev/tty
  # then also remove its associated directory
  if ! test -e "$get"; then
    dir=${get%.get}
    rm -vrf "$dir"
  fi
done
