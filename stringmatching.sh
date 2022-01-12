#There are multiple ways to check if a string contains a substring.

 #One approach is to use surround the substring with asterisk symbols * which means match all characters.
#!/bin/bash

VAR=’GNU/Linux is an operating system’
 if [[ $VAR == *"Linux"* ]]; then
    echo "It’s there."
 fi


 #!/bin/bash

 strval="Microsoft Internet Explorer"

 if [[ $strval == *Internet* ]];
 then
 echo "Partially Match"
 else
 echo "No Match"
 fi

 if [[ $strval == *internet* ]];
 then
 echo "Partially Match"
 else
 echo "No Match"
fi