#!/bin/bash
#Script 3 is about disk and permission auditor

DIRS=("/etc" "/home" "/tmp")
echo "________Directory Audit Report_________"

for DIR in "${DIRS[@]}";do
if [ -d "$DIR" ];then
PERMS=$(ls -ld $DIR | awk '{print $1 , $3 , $4}')
echo "$DIR => Permission & Owner : $PERMS"
else 
echo "$DIR does not exist"
fi
done

