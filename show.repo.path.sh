#!/bin/bash
if [ ! "$SUDO_USER" ]; then
  error_text "This option requires sudo privileges."
  green_text " - sudo privilege is required to read elasticsearch yml"
  green_text " - exec sudo su command and try again"
  echo ""
  exit
fi

elasticsearch_yml="/etc/elasticsearch/elasticsearch1.yml"

if [ ! -f "$elasticsearch_yml" ]; then
  red_text "$elasticsearch_yml doesnt exists"
  echo " - please be sure installed elasticsearch"
  echo " - for install look at the https://www.elastic.co/guide/en/elasticsearch/reference/current/targz.html#install-linux"
  exit
fi

source "$DIR/trim.sh"

path=$(cat <"$elasticsearch_yml" | grep "path.repo" | grep -v "#" | awk '{print $2}')
trimmed_path=$(trim "$path")
if [ ${#trimmed_path} -eq 0 ]; then
  echo ""
  error_text "path.repo property cant find in /etc/elasticsearch/elasticsearch.yml"
fi
green_text "$trimmed_path"
