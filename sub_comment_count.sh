#!/bin/bash
#Get comment count for subreddits

infile=$1


cat $1 |jq '.subreddit' | sort | uniq -c | sort -nr  > comment_count/count_$1.txt
