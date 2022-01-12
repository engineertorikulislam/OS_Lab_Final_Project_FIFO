# Md. Torikul Islam , ID: 192002131

echo ----------------------------------- 
echo 'Student Mark List' 
echo ----------------------------------- 
echo Enter the Student name 
read name 
echo Enter the Student ID number 
read rno 
echo Enter the CNN  Mark 
read m1 
echo Enter the OS Mark 
read m2 
echo Enter the CNN Lab Mark 
read m3 
echo Enter the OS Lab Mark 
read m4 
echo Enter the Drawing Mark  
read m5 
tot=$(expr $m1 + $m2 + $m3 + $m4 + $m5) 
avg=$(expr $tot / 5) 
echo ----------------------------------- 
echo 'Student Mark List' 
echo ----------------------------------- 
echo "Student Name    : $name" 
echo "ID Number       : $rno" 
echo "Mark1           : $m1" 
echo "Mark2           : $m2" 
echo "Mark3           : $m3" 
echo "Mark4           : $m4" 
echo "Mark5           : $m5" 
echo "Total           : $tot" 
echo "Average         : $avg" 

if [ $m1 -ge 40 ] && [ $m2 -ge 40 ] && [ $m3 -ge 40 ] && [ $m4 -ge 40 ] && [ $m5 -ge 40 ] 
then 

 echo "Result                : Pass" 
  
 if [ $avg -ge 80 ] 
    then 
    echo "Grade                  : A+" 
    elif [ $avg -ge 75 ] 
    then 
            echo "Grade           : A" 
    elif [ $avg -ge 70 ] 
    then 
            echo "Grade           : A-" 
    elif [ $avg -ge 65 ] 
    then 
            echo "Grade           : B+" 
    elif [ $avg -ge 60 ] 
    then 
            echo "Grade           : B-" 
    elif [ $avg -ge 55 ] 
    then 
            echo "Grade           : C+" 
    elif [ $avg -ge 50 ] 
    then 
            echo "Grade           : C"
    elif [ $avg -ge 45 ] 
    then 
            echo "Grade           : C-"
    elif [ $avg -ge 40 ] 
    then 
            echo "Grade           : D"
 fi 
else 
 echo "Result              : Fail" 
fi 
echo ----------------------------------- 
