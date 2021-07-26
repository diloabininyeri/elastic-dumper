#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# shellcheck disable=SC2034
host="http://localhost:9200"

source "$DIR/color.sh"
# shellcheck disable=SC1073
if [ "$1" == "-h" ] || [ "$1" == "h" ] || [ "$1" == "help" ] || [ $# -eq 0 ]; then
  echo ""
  green_text "   list:"
  echo "     -list all snapshot"
  echo "     -list relevant indices"
  echo "     -list all repository names"
  echo ""
  green_text "    zip:"
  echo "      -create zip file"
  echo "      -named by date"
  echo ""
  green_text "    path.repo:"
  echo "       -writes snapshot path elasticsearch.yml file"
  echo "       -Require"
  echo ""
  green_text "    delete:"
  echo "       -delete snapshot"
  echo ""
  green_text "    export:"
  echo "       -export indices"
  echo ""
  green_text "    import:"
  echo "        -import indices"
  echo ""
  green_text "    create.snapshot:"
  echo "        -creates snapshot for import and export"
  echo "        -creates snapshot for import and export"
  echo ""
  blue_text "  - run path.repo before running this"
  red_text "  - Require"
  echo ""
  green_text "    cleanup:"
  echo "       -Triggers the review of a snapshot repository’s contents and deletes any stale data that is not referenced by existing snapshots."
  echo ""
  green_text "   show.repo.path:"
  echo "       -show repo.path of snapshot"
  echo ""

  echo ""
  exit
fi

case $1 in
"list")
  source "$DIR/list.sh"
  exit
  ;;
"zip")
  source "$DIR/zip.sh"
  exit
  ;;
"delete")
  source "$DIR/delete.sh"
  exit
  ;;
"export")
  source "$DIR/export.sh"
  exit
  ;;
"import")
  source "$DIR/import.sh"
  exit
  ;;
"create.snapshot")
  source "$DIR/create_snapshot.sh"
  exit
  ;;
"cleanup")
  source "$DIR/cleanup.sh"
  exit
  ;;
"path.repo")
  source "$DIR/repo_path.sh"
  exit
  ;;
"show.repo.path")
  source "$DIR/show.repo.path.sh"
  exit
  ;;
esac

error_text "     You have entered an unsupported command, check the help with the h or -h parameter"


./elastic.sh
  blue_bold_text   "  Dılo sürücü <berxudar@gmail.com"

  echo ""
