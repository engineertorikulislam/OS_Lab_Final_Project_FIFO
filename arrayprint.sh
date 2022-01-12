array= (1 2 3 4 5 6)
i=0

while [$i -lt ${#array[@]}]

do 
 echo ${arr[$i]}
 i=‘expr $i + 1‘
done 
