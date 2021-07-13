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
