#!/bin/bash

host="http://localhost:9200"

if [ "c" == "$1" ]; then
  clear
fi
response=$(curl -XGET -s "${host}/_snapshot/my_fs_backup/_all?pretty=true")

snapshotList=$(echo "$response" | jq .snapshots)
green_text "$snapshotList"
