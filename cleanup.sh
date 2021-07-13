#!/bin/bash

host="http://localhost:9200"

read -p "Are you sure ? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then

  createRepo=$(curl -XPOST -s "${host}/_snapshot/my_fs_backup?pretty=true")
  green_text "$createRepo"
fi
