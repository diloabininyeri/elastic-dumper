#!/bin/bash
if [ ! "$SUDO_USER" ]; then
  error_text "This option requires root privileges."
  echo ""
  exit
fi
path=$(cat <"/etc/elasticsearch/elasticsearch.yml" | grep "path.repo" | grep -v "#"| awk '{print $2}')
green_text "$path"
