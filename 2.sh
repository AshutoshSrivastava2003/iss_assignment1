#!/bin/bash
#awk -F '~' printf $2" once said"$1 <quotes.txt >sample.txt
#!/bin/bash
inp="quotes.txt"
while IFS= read -r line
do
  author=`cut -d "~" -f2- <<< "$line"`
  quote=`echo $line | cut -d "~" -f1`
  if [ -z "$line" ]
  then
  continue
  else
  echo "$author once said,\""$quote"\""
  fi
done < "$inp" > speech.txt
