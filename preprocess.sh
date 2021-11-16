#!/bin/bash
#loop through lines of full month file and extract subreddits with counts
# loop through subreddit-count file to trim/extractwords from subreddits with at least N comments
# Loop through words and 
# input is file of all comments in a month, and limit for min comments in a reddit and min word count
	#$1 = the full month of comments
	#$2 = the min comment count for a sub in that month
	#$3 = the min number of occurrences of a word

#get count of comments in each sub
cat $1 |jq '.subreddit' | sort | uniq -c | sort -nr  > comment_count/count_$1.txt


#get all comments for a single sub, trim, and count words
while read -r count sub; 
do
	
	if [ $count -lt  $2 ]
    	then
       		break
	fi

	
	cat $1 |jq 'select(.subreddit=='"$sub"') | .body' | tr '[:space:]' '[\n*]' | tr -d '[:punct:]'| tr [:upper:] [:lower:] | grep -v "^\s*$" | sort | uniq -c | sort -bnr | awk 'int($1)>=$3' > word_count/test.txt 
	
		
done < comment_count/count_$1.txt


