#!/bin/bash

source "$DIR/check_host.sh"

read -p "repo name: " repo

read -p "Are you sure ? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then

  # shellcheck disable=SC2154
  deleteRepo=$(curl -XDELETE -s "${host}/_snapshot/my_fs_backup/${repo}?pretty=true")
  green_text "$deleteRepo"
fi
