# Project Title : FIFO (First In First Out Page Replacement Algorithm By Bash Script)

# Group No: 9

# Md. Torikul Islam 
# ID: 192002131

echo "Enter the number of pages : "              # Input  Total Number of Page 
read page

echo "Enter the Page Numbers : "
    for (( i = 0; i < page; i++)); do                 
        echo "page $i"                           # Show every index pases 
        read value[$i]                           #Store Pages in value array 
    done

echo "Enter the  number of frame : "            # Input the frame size
read frame

temp[$frame]=""                                 # Temp Innitialize(Rearrange Frame or Queue)
 
    for ((i = 0; i < frame; i++));              # Here First of All, We initialized frame index -1 
    do
        temp[$i]="-1"
    done

     echo "====== Page Frames ======"

for ((i = 0; i < page; i++)); 
do
    count=0                                           # Counter Initialized
    for (( j = 0; j < frame; j++)); 
    do
        if [ "${value[$i]}" == "${temp[$j]}" ]; then  # if the current page is present in the memory, do nothing

            let count++

            let page_fault--                           # Decrease Page Miss (Page fault) 
        fi
    done

    let page_fault++            # Increment the page faults

    if [[ $page_fault -le $frame ]] && [[ $count -eq 0 ]]; then

        let $((temp[i] = value[i]))    
        
    elif [[ $count -eq 0 ]]; then

        let $((temp[(page_fault - 1) % frame] = value[i]))  # Replace the topmost page with the current page from the string
    fi
    echo "------------------------"
    
        for ((j = 0; j < frame; j++));
         do
            echo  "${temp[$j]}" 
        done | column

done
echo "------------------------"
echo " "
echo "Total Page Fault :  $page_fault"                      # Page Fault Print 

hit=`echo "$page-$page_fault" | bc`                         # Page Hit Calculate

echo "Total Page Hits : " $hit                              # Page Hit Calculate Print 

 hitrate=`echo "scale=2;  $hit/ $page*100 "  | bc`          # Calculate Hit Rate 

echo "Hit Rate :" $hitrate                                  # Print Hit Rape

 faultrate=`echo "scale=2;  $page_fault/ $page *100 "  | bc` # Page Falut Rate calculate 

 echo "Page Fault Rate : " $faultrate                        # Page fault rate Print 
