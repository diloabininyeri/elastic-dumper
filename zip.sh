#!/bin/bash

read -p "zip file name: " fileName
read -p "repo location path: " repoLocation

dateTime=$(date +%F_%H-%M-%S)
zipName="${fileName}_${dateTime}.zip"
zip -r "$zipName" "$repoLocation"
