#!/bin/bash

#!/bin/bash
source "color.sh"

if [ ! "$SUDO_USER" ]; then
  error_text "This option requires sudo privileges."
  echo ""
  exit
fi
file="/etc/elasticsearch/elasticsearch.yml"
check=$(grep -n path.repo "$file" | grep -v "#")
path_repo="path.repo: /home/my_fs_backup_location"
if [ ${#check} -eq 0 ]; then
  echo "$path_repo" >>$file
  green_text "$path_repo wrote to elasticsearch.yml file"
  exit
fi

info_text "already written "
echo ""
