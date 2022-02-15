# How does language evolve on the internet?
#### "Let's pwn some n00bs!"
Have you ever checked out a reddit thread or facebook group and found you didn't understand a thing that was being said?

This project is aiming to understand jargon and how it evolves on the internet. We're curious to see how new acronyms, jargon, lingo, or misspellings move from one community to another. To do this, we're building algorithms to detect jargon and compiling a corpus of **every single comment ever made on Reddit** to test it out.


## Nuts and Bolts
### Preprocessing the Data
1. Raw data are scraped from zip files found [here](https://files.pushshift.io/reddit/comments/) 
   - files can be downloaded using `Download_All_Files.ipynb`
2. Each month of comments in then parsed to extract only the raw comments (removing comment metadata)
   - Parsing done using `Split_corpus.ipynb`
3. Individual words are counted using `extract_word_count.sh`
4. Once word counts are tallied, we can begin analyzing the data with `Word_Count_Analysis.ipynb`


