#!/bin/bash

host="http://localhost:9200"

read -p "Are you sure ? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then

  _cleanup=$(curl -XPOST -s "${host}/_snapshot/my_fs_backup/_cleanup?pretty=true")
  green_text "$_cleanup"
fi
