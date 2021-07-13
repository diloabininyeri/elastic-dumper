#!/bin/bash
source "color.sh"
# shellcheck disable=SC1073
if [ "$1" == "-h" ] || [ "$1" == "h" ] || [ "$1" == "help" ]; then
  green_text "list:"
  echo "  -list all snapshot"
  echo "  -list relevant indices"
  echo "  -list all repository names"
  green_text "zip:"
  echo "  -create zip file"
  echo "  -named by date"
  green_text "path.repo:"
  echo "  -writes snapshot path elasticsearch.yml file"
  red_text "  - Require"
  green_text "delete:"
  echo "  - delete snapshot"
  green_text "export:"
  echo "  - export indices"
  green_text "import:"
  echo "  - import indices"
  green_text "create.snapshot:"
  echo "  - creates snapshot for import and export"
  echo "  - creates snapshot for import and export"
  red_text "  - run path.repo before running this"
  red_text "  - Require"

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
esac

red_text "supported parameters are list,export,import,delete,create.snapshot,path.repo,zip"
echo "for example ./elastic.sh list"
