#!/bin/bash
wc -c < $1
wc -l < $1
wc -w < $1
IFS='\n'
echo ''>>$1
i=1
while read line
do
a=$(wc -w <<< "$line")
echo "Line No:<$i> - Count of words:[$a]"
i=$((i+1))
done < $1

sed -e 's/[^[:alpha:]]/ /g' $1 | tr '\n' " " |tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z'|
sort | uniq -cd | awk '{print "Word : <"$2"> - Count of repitition : ["$1"]"}'
