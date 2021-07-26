#!/bin/bash

function get_response_status() {
  local status
  status=$(curl -Is "$1" | head -1)
  local response_status
  response_status=$(echo "$status" | awk '{print $2}')
  echo "$response_status"
}

# shellcheck disable=SC2154
response_status=$(get_response_status "$host")
if [[ "$response_status" -ne 200 ]]; then
  error_text "Failed to connect to address $host"
  exit
fi
