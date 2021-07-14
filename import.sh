#!/bin/bash

host="http://localhost:9200"

snapshotCheck=$(curl -XGET -s ${host}/_snapshot | jq .my_fs_backup)
snapshotCheckSize=${#snapshotCheck}

if [ "$snapshotCheckSize" -eq 4 ]; then

  error_text "snapshot my_fs_backup not exists"
  exit
fi

read -p "which one imports(indices) :" indices

read -p "repo name: " repo

read -p "Are you sure ? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
  response=$(curl -X POST -H "Content-Type: application/json" -s -d '{"indices": "'$indices'"}' "${host}/_snapshot/my_fs_backup/${repo}/_restore?pretty=true")
  green_text "$response"
fi

yellow_text "if you get any error,maybe service needs restart"
