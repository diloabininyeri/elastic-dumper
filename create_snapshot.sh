#!/bin/bash

host="localhost:9200"
response=$(curl -XPUT -s "${host}/_snapshot/my_fs_backup?pretty" -H 'Content-Type: application/json' -d'
{
  "type": "fs",
  "settings": {
    "location": "/home/my_fs_backup_location",
    "compress": true
  }
}')

echo "$response"
