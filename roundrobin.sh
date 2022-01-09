tem=0
atat=0
awt=0

echo "*****Round Robin*****"
echo "Enter The Process Number : "
read n

for((i=0;i<n;i++))
do
    echo "Bust Time $((i+1)) "
    read bt[$i]
    ct[$i]=${bt[$i]}
done

echo "Enter The Time Slice "
read t
max=0

for i in ${bt[@]}; 
    do
        if (( $i > $max )); 
        then max=$i 
        fi 
    done

echo "Max is:$max"

echo -ne "Gun Chart: "
    for((i=0;i<=$(($max / $t));i++))
    do
        for((j=0;j<n;j++))
        do
            if [[ ${bt[j]} -ne 0 ]];then
            if [[ ${bt[j]} -eq $t ]]; then

            tat[$j]=`expr ${bt[$j]} + $tem`
            tem=`expr ${bt[$j]} + $tem`

            ((bt[$j]=0))

            echo -ne "$tem "
      
            else
            bt[$j]=`expr ${bt[$j]} - $t`
            tem=`expr $tem + $t`
            echo -ne "$tem "
               

            fi
            fi
        done

    done


echo ""

  for((i=0;i<n;i++))
    do

        wt[$i]=`expr ${tat[$i]} - ${ct[$i]}`
        awt=`expr $awt + ${wt[$i]}`
        atat=`expr $atat + ${tat[$i]}`

    done


atat=$(($atat / $n))
awt=$(($awt / $n))
echo "Average Wating Time : $awt"
echo "Average Tourand Around Time : $atat"