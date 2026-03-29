#!/bin/bash

#Script 5 : Open Source Manifesto Generator 

echo "Answer the following questions:"

read -p "1.Name one open-source tool you use: " TOOL 
read -p "2.What does freedom mean to you ? " FREEDOM
read -p "3.What would you build and share? " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I believe in open source. Using $TOOL , I understand that freedomm means $FREEDOM. I want to build $BUILD and share it with everyone."> $OUTPUT

echo ""
echo "Manofesto saved in $OUTPUT"
echo ""
cat  $OUTPUT
