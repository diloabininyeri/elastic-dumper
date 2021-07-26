#!/bin/bash

source "$DIR/check_host.sh"

# shellcheck disable=SC2154
response=$(curl -XPUT -s "${host}/_snapshot/my_fs_backup?pretty" -H 'Content-Type: application/json' -d'
{
  "type": "fs",
  "settings": {
    "location": "/home/my_fs_backup_location",
    "compress": true
  }
}')

echo "$response"
