#!/bin/bash

source "color.sh"
function confirm() {
  read -p "$1: (y|n)?" -n 1 -r
  shift 1
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo ""
    "$@"
  else
    echo ""
    red_text "aborted"
  fi
}

function confirm_with_option() {

  echo "$1: ?"
  shift 1
  select option in Yes No; do

    case $option in

    "Yes")
      "$@"
      break
      ;;

    "No")
      red_text "aborted"
      break
      ;;

    *)
      red_text "Invalid entry."
      break
      ;;
    esac
  done

}


#test using
#confirm  "are you sure" ls
#confirm_with_option "are you sure" ls