echo "enter the string"
read s
strlen=${#s}
for (( i=$strlen-1; i>=0; i-- ));
do
    revstr=$revstr${s:$i:1}
done
echo "PART_A:Reversed String : $revstr"
revstr=$(echo "$revstr" | tr "a-z" "b-za" | tr "A-Z" "B-ZA")
echo "PART_B:NEXT Reversed String : $revstr"
for (( i=($strlen-1)/2; i>=0; i-- ));
do
    halfrevstr=$halfrevstr${s:$i:1}
done
for (( i=($strlen-1)/2+1; i<=($strlen-1); i++ ));
do
    halfrevstr=$halfrevstr${s:$i:1}
done
echo "PART_C:Half Reversed String : $halfrevstr"
