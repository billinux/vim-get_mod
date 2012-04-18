#!/bin/sh
# Clones or updates the Git repositories specified in `./**/*.get` files.

find . -type f -name '*.get' -print | while read get; do
  dir=${get%.get}
  echo -n "$dir => "
  if cd "$dir/.git/.." 2>/dev/null; then
    git pull
    cd - >/dev/null
  else
    url=$(cat "$get")
    git clone "$url" "$dir"
  fi
done
