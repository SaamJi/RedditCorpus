#!/bin/bash
#loop through lines of full month file and extract subreddits with counts
# loop through subreddit-count file to trim/extract words from subreddits with at least N comments
# Parse the words 
# input is file of all comments in a month, and limit for min comments in a reddit and min word count
	#$1 = the full month of comments (unzipped file)
	#$2 = the min comment count for a subreddit in that month
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

	cat $1 |jq 'select(.subreddit=='"$sub"') | .body' | tr '[:space:]' '[\n*]' | tr -d '[:punct:]'| tr [:upper:] [:lower:] | grep -v "^\s*$" | sort | uniq -c | sort -bnr | awk -v a="$3" 'int($1)>=a {print $0}' > word_count/$1_${sub}.txt 
	
		
done < comment_count/count_$1.txt


#sed -i 's/^ *//' 