# How does language evolve on the internet?

The way we speak and words we choose can be greatly affected by our social influences. Technical communities develop their own niche vocabulary, while teenagers may adopt new words that seem entirely foreign to their parents. The goal of this project is to study how new words or jargon begin, and how do they spread across communities into the wider lexicon.

For example, words such as “lol”, “pwn”, or even “crypto” all started as niche acronyms, misspellings, or jargon, but have become widely adopted. How does this happen? And what statistical dynamics govern this process?

This project is aiming to understand jargon and how it evolves on the internet. We're curious to see how new acronyms, jargon, lingo, or misspellings move from one community to another. To do this, we're building algorithms to detect jargon and applying it to a massive corpus of ***every single comment ever made on Reddit***.


## Nuts and Bolts
### Preprocessing the Data
1. Raw data are scraped from zip files found [here](https://files.pushshift.io/reddit/comments/) 
   - files can be downloaded using `Download_All_Files.ipynb`
2. Each month of comments in then parsed to extract only the raw comments (removing comment metadata)
   - Parsing done using `Split_corpus.ipynb`
   - note to self: move file from SSD to project folder, unzip, then run split corpus
3. Individual words are counted using `extract_word_count.sh`
   - E.g. `sh exract_word_count.sh RC_2005-12` 
   - note to self: after getting wrod count, move files back to SSD
5. Once word counts are tallied, we can begin analyzing the data with `Word_Count_Analysis.ipynb` or `Word_Count-TFIDF.ipynb`


Next steps:
- [X] pull in December data from 2005 to 2018
   - currently 2005-2014,16
- top 20 words for top 20 subs, Spearman correlation across 2017/2018 (i.e., "how stable is our tf-idf++ measure?")
- figures for selected words (maybe OED new additions?) 
- write-up
- upload an interactive website that allows users to choose top jargons from a given year and show their origins. 

### Note: the website will be uploaded soon, once the .css files are finished.


