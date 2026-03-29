#!/bin/bash
#Script 2: FOSS package Inspector

PACKAGE="git"

#Checking if Git is installed
if git --version &>/dev/null; then
echo "$PACKAGE is installed."
git --version
else
echo "$PACKAGE is not installed."
fi

case $PACKAGE in
git)echo "Git: A distributed version control system used to track changes in code.";;
*) echo "Unknown package";;
esac
