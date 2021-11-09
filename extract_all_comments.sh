#!/bin/bash
#loop through lines and extract comments
#input is main file, file of subreddit counts

cnt=0

while read -r count sub; 
do
	((cnt++))
	echo $sub
	cat $1 | jq 'select(.subreddit=='"$sub"') | .body' > comments/$sub.txt 
	if [ $cnt -eq 5 ]
    	then
       		break
	fi
done < $2