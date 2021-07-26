#!/bin/bash



source "$DIR/check_host.sh"

read -p "Are you sure ? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then

  # shellcheck disable=SC2154
  _cleanup=$(curl -XPOST -s "${host}/_snapshot/my_fs_backup/_cleanup?pretty=true")
  green_text "$_cleanup"
fi
