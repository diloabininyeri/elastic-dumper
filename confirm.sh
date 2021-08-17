#!/bin/bash

function confirm() {
  read -p "$1: (y|n)?" -n 1 -r
  shift 1
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo ""
    "$@"
  else
    echo ""
    red_text "aborted"
    exit
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
      exit
      break
      ;;

    *)
      red_text "Invalid entry."
      exit
      break
      ;;
    esac
  done

}


#test using
#confirm  "are you sure" ls
#confirm_with_option "are you sure" ls
