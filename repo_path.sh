#!/bin/bash

file="/etc/elasticsearch/elasticsearch.yml"

if ! grep -q path.repo "$file"; then
  echo "path.repo: /home/my_fs_backup_location" >>$file
  green_text "path.repo wrote to elasticsearch.yml file"
  exit
fi

red_text "already written "
