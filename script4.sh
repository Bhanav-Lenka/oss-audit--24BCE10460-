#!/bin/bash
#Script 4: Log File Analyzer

LOGFILE=$1
KEYWORD="error"
COUNT=0

#Check if the file exists
if [ ! -f "$LOGFILE" ]; then
echo "FIle not found"
exit 1
fi

#read file line by line
while read LINE; do
if echo "$LINE" | grep -i "$KEYWORD" > /dev/null;then
COUNT=$((COUNT+1))
fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
