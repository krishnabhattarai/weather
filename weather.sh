#!/bin/bash
year=`date -d yesterday +%Y`
month=`date -d yesterday +%M`
day=`date -d yesterday +%D`

curl "https://www.wunderground.com/history/airport/GNV/$year/$month/$day/DailyHistory.heml?&format=1" > MaxTemp.txt




maxTemp=`awk -F',' '{print $2}' gnv.txt | sort -n | tail -n1`

echo The Max temp is $maxTemp



