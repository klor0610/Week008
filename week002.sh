#!/bin/bash

#current directory
pwd
echo "Week 2 script review"
#create and add a list to 2 different files
echo "MN">week_002.txt
echo "NM">>week_002.txt
echo "IL">>week_002.txt
echo "MN">week_022.txt
echo "NM">>week_022.txt
echo "AL">>week_022.txt
#show difference between the two fie
diff week_002.txt week_022.txt
#search for similarities in the two files, option i allows upper and
#lower case search
grep -i m  week_002.txt
echo "hit enter to continue"
read
#sort both files
sort -d week_002.txt
echo "press enter to see the 2nd file sorted"
read
sort -d week_022.txt
