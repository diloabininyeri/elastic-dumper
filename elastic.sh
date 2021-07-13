#!/bin/bash
source "color.sh"
# shellcheck disable=SC1073
if [ "$1" == "-h" ] || [ "$1" == "h" ] || [ "$1" == "help" ] || [ $# -eq 0 ]; then

  echo ""
  yellow_text "  This bash script exports and imports elasticsearch indexes"
  echo ""
  blue_text "   Dılo sürücü <berxudar@gmail.com"

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
  source "list.sh"
  exit
  ;;
"zip")
  source "zip.sh"
  exit
  ;;
"delete")
  source "delete.sh"
  exit
  ;;
"export")
  source "export.sh"
  exit
  ;;
"import")
  source "import.sh"
  exit
  ;;
"create.snapshot")
  source "create_snapshot.sh"
  exit
  ;;
"cleanup")
  source "cleanup.sh"
  exit
  ;;
"path.repo")
  source "repo_path.sh"
  exit
  ;;
"show.repo.path")
  source "show.repo.path.sh"
  exit
  ;;
esac