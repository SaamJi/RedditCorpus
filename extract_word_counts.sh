#!/bin/bash
#loop through lines and extract comments
#input is file of all comments in subreddit


echo $1
cat ./comments/$1 | tr '[:space:]' '[\n*]' | tr -d '"' | tr -d '[:punct:]'| grep -v "^\s*$" | sort | uniq -c | sort -bnr > word_count/$1



while read -r count sub; 
do
	
	if [ $count -eq $2 ]
    	then
       		break
	fi
	echo $count $sub >> word_count/trim_$1
	
done < word_count/$1
rm word_count/$1