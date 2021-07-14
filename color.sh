function red_text() {
  tput setaf 1
  echo "$1"
  tput sgr0
}

function green_text() {
  tput setaf 2
  echo "$1"
  tput sgr0
}

function yellow_text() {
  tput setaf 3
  echo "$1"
  tput sgr0
}
function blue_text() {
  tput setaf 4
  echo "$1"
  tput sgr0
}

function alert_text() {
  red_text "$1"
}
function success_text() {
  green_text "$1"
}

function info_text() {
  yellow_text "$1"
}

function start_red_text() {
  tput setaf 1
}
function start_green_text() {
  tput setaf 2
}

function reset_text() {

  tput setaf reset
}

function foo() {
  tput setab 2
}
function start_bold_text() {
  tput bold
}

function bold_text() {
  tput bold
  echo "$1"
  tput sgr0
}
function close_bold_text() {
  tput sgr0
}
function normal() {
  tput sgr0
}
function error_text() {
  start_bold_text
  red_text "$1"
  close_bold_text
}

function green_bold_text() {
  start_bold_text
  green_text "$1"
  close_bold_text
}
function blue_bold_text() {
  start_bold_text
  blue_text "$1"
  close_bold_text
}

function colorize() {
  command="$1_text"
  $command "$2"
}
