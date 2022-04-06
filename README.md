# How does language evolve on the internet?

The way we speak and words we choose can be greatly affected by our social influences. Technical communities develop their own niche vocabulary, while teenagers may adopt new words that seem entirely foreign to their parents. The goal of this project is to study how new words or jargon begin, and how do they spread across communities into the wider lexicon.

For example, words such as “lol”, “pwn”, or even “crypto” all started as niche acronyms, misspellings, or jargon, but have become widely adopted. How does this happen? And what statistical dynamics govern this process?

This project is aiming to understand jargon and how it evolves on the internet. We're curious to see how new acronyms, jargon, lingo, or misspellings move from one community to another. To do this, we're building algorithms to detect jargon and compiling a corpus of <u>every single comment ever made on Reddit<\u> to test it out.


## Nuts and Bolts
### Preprocessing the Data
1. Raw data are scraped from zip files found [here](https://files.pushshift.io/reddit/comments/) 
   - files can be downloaded using `Download_All_Files.ipynb`
2. Each month of comments in then parsed to extract only the raw comments (removing comment metadata)
   - Parsing done using `Split_corpus.ipynb`
3. Individual words are counted using `extract_word_count.sh`
4. Once word counts are tallied, we can begin analyzing the data with `Word_Count_Analysis.ipynb` or `Word_Count-TFIDF.ipynb`

Work in Progress: Currently working on a single pipeline for the above ^


