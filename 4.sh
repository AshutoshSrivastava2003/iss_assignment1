IFS=, read -a arr -p "Enter an array in CSV form:"
echo "You entered: ${arr[@]}"
arrlen=${#arr[@]}
#echo $arrlen
for (( i=0; i<arrlen-1; i++ ));
do
for (( j=0; j<arrlen-1-$i; j++ ));
do
if((${arr[$j]}>${arr[$j+1]}))
then
temp=${arr[$j+1]}
arr[$j+1]=${arr[$j]}
arr[$j]=$temp
fi
done
done
echo "Sorted Array: ${arr[@]}"
