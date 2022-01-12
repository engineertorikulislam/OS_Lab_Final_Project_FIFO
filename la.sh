# Md Torikul Islam
# ID: 192002131

    read -p "Enter How Many Student ID : " m 

        for (( i=0; i<m; i++))
        do
                echo "Enter $(( i+1 ))  th student ID : "
                read id[$i]
        done


    read -p "How Many Student GCPA : " n


        for (( i=0; i<n; i++))
        do
                echo "Enter $(( i+1 ))  th student  cgpa : "
                read cgpa[$i]
        done

    small=0
    greatest=0
    
    for (( i=0; i<n; i++ ))
    do
    
            if [ ${cgpa[$i]} -lt $small ];   # [ ] should be space 
        
                    then  small=${cgpa[$i]}
 
              elif [ ${cgpa[$i]} -gt $greatest ]; 
    
                    then    greatest=${cgpa[$i]}
            fi

    done
    
    echo "The Hieght cgpa is  :  $greatest"

    low=0
    high=0

     for (( i=0; i<m; i++ ))
    do
    
            if [ ${id[$i]} -lt $low ];   # [ ] should be space 
        
                    then  low=${id[$i]}
 
              elif [ ${id[$i]} -gt $high ]; 
    
                    then    high=${id[$i]}
            fi

    done

    echo "The Hieght cgpa ID is   :  $high"

   