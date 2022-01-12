#Md Torikul Islam 
# ID: 192002131

read -p "Enter student first name: " studentName
read -p "Enter CGPA of student: " studentCGPA

height=${studentCGPA:0:1}

for ((i = 0; i < ${#studentName}; i++));
 do
    if [[ ${studentCGPA:$i:1} -eq $height ]]; 
    then
        echo "Height CGPA: ${height}"
    fi
done