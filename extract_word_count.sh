#!/bin/bash
#unzip file
#loop through files in unzipped dir
#for each file, get word count
#arguments: $1 RC_year-month, $2 minimum word count (optional, will add this later)


for FILE in /Users/choldawa/Documents/Projects/RedditCorpus/raw_body_text/$1/*.txt
do 
	file_name=${FILE##*/}
	echo $file_name
mkdir -p word_count/$1
cat $FILE  | tr '[:space:]' '[\n*]' | tr -d '[:punct:]'| tr [:upper:] [:lower:] | grep -v "^\s*$" | sort | uniq -c | sort -bnr > word_count/$1/${file_name} 
done