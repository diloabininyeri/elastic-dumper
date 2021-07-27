#!/bin/bash

source "$DIR/check_host.sh"

# shellcheck disable=SC2154
snapshotCheck=$(curl -XGET -s "$host"/_snapshot | jq .my_fs_backup)
snapshotCheckSize=${#snapshotCheck}

if [ "$snapshotCheckSize" -eq 4 ]; then

  error_text "snapshot my_fs_backup not exists"
  exit

fi

read -p "please write snapshot location: " location
#location=$(cat <"/etc/elasticsearch/elasticsearch.yml" | grep "path.repo" | awk '{print $2}')

if [ ! -d "$location" ]; then
  error_text "${location} path is does not exists"
  exit
fi

read -p "repo name: " repo

read -p "Are you sure ? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then

  createRepo=$(curl -XPUT -s "${host}/_snapshot/my_fs_backup/${repo}?pretty=true")
  success_text "$createRepo"
fi
