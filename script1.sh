#!/bin/bash
echo "--------- System Identity Report ---------"

Kernel=$(uname -r)
User_name=$(whoami)
Uptime=$(uptime -p)
Date=$(date)

echo "Kernel Version : $Kernel"
echo "User: $User_name"
echo "Uptime: $Uptime"
echo "Date:$Date"

