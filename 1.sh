#!/bin/bash
sed '/^$/d' quotes.txt
echo "---------------------------------------------------------------------"
echo "PART B STARTS HERE///////////////////////////////////////////////////"
echo "---------------------------------------------------------------------"
awk '!seen[$0]++' quotes.txt