#!/bin/bash

function trim() {
  local string
  string="$1"
  local trimmed_string
  trimmed_string=$(echo "$string" | xargs)
  local string_length
  string_length=${#trimmed_string}
  local new_str

  for i in $(seq 0 "$string_length"); do
    local currentChar
    currentChar=${trimmed_string:$i:1}
    if [ "$currentChar" == '[' ] || [ "$currentChar" == ']' ] || [ "$currentChar" == '"' ]; then
      continue
    fi
    new_str+=${trimmed_string:$i:1}
  done

  echo "$new_str" | xargs

}
