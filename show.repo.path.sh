#!/bin/bash
path=$(cat <"/etc/elasticsearch/elasticsearch.yml" | grep "path.repo" | awk '{print $2}')
echo "$path"
