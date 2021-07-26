#!/bin/bash

source "$DIR/check_host.sh"

# shellcheck disable=SC2154
response=$(curl -XGET -s "${host}/_snapshot/my_fs_backup/_all?pretty=true")

snapshotList=$(echo "$response" | jq .snapshots)
green_text "$snapshotList"
