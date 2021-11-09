#!/bin/bash
#get comments for each subreddit




cat $1 | jq 'select(.subreddit=='"$2"') | .body' > $2.txt
