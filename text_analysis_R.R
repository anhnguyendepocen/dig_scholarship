## TEXT ANALYSIS IN R WORKSHOP
## Center for Research Data and Digital Scholarship
## University of Colorado, Boulder

## N. Chardon, D. Dearth, N. Eichmann-Kalwara
## 29 Nov 2017

## Aims: 
## 1. Download large text dataset
## 2. Create workable version of text dataset through preprocessing
## 3. Develop basic understanding of text analysis with word clouds, frequency graphs, 
##    and co-occurence lists


## Using this script:
## 1. The symbol '#' denotes comments. 
##    If in the same line as a command, these comments describe what the command executes.
## 2. All sections labeled 'PRACTICE' are meant to be completed on your own. 
## 3. The corresponding voiceover to this script is available on OSF: https://osf.io/6jb9t/


## Disclaimer: This script was written by Nathalie Chardon and reflects her coding style. 
## The University of Colorado, Boulder takes no responsibility for the content.




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # WELCOME! # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# Introduce yourself to your neighbor(s)


# What text analyses are used in your field, by your colleagues, and by you? 




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # GETTING STARTED # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # Why Text Analysis? # # -------------------------------------------------------------------------

# Text Analysis: exploratory text mining method to 'macroscopically' read texts 

# Goal: find patterns and trends in a text or other unstructured data

# Such patterns and trends facilitate traditional close-readings and qualitative analysis of data


# # Why use R? # # ---------------------------------------------------------------------------------

# R, similar to Python, is increasingly used for a variety of methods beyond statistical analysis:

# computational social science

# digital humanities methods

# network analysis data visualization


# Can easily expand your methodological toolbelt in R

# Free, open-source, vibrant community of users and developers who use it that can provide support 


# # R REVIEW # # -----------------------------------------------------------------------------------

# Executing commands (i.e. telling R what you want it to do):

# 1. '>' is the prompt (i.e. "Hi I'm R, what do you want me to do now?")

# 2. Type code (i.e. "Hi I'm your new user, this is what I want you to do.") in Console or R Script

# 3. Hit 'enter' in Console or 'run' in Script

# Keyboard shortcut:	Ctrl+Enter (Windows) or	Command+Enter (Mac)


# # INSTALL & LOAD PACKAGES # # --------------------------------------------------------------------

install.packages('tm') #install package for text analysis

install.packages('wordcloud') #package for creating wordcloud

install.packages('ggplot2') #package for plotting in ggplot


library(tm) #load package into R's environment

library(wordcloud)

library(ggplot2)

library(RColorBrewer) #color palette





# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 1. DATA # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # DATA # # --------------------------------------------------------------------------------------- 

# Download TWO text files from 'Text Analysis in R' workshop on OSF: https://osf.io/6jb9t/

# Save these files in a new folder named 'texts' on your Desktop (nothing else in this folder!)


# Name directory (= folder) with your downloaded texts: MAC

mydirectory <- file.path('~', 'Desktop', 'texts') 


# Name directory (= folder) with your downloaded texts: WINDOWS

mydirectory <- file.path('C:', 'texts') 

dir(mydirectory) #set this directory


# Load corpora into R's environment

texts <- VCorpus(DirSource(mydirectory)) #pulls texts from directory source ('mydirectory')


# # LOOK AT DATA # # -------------------------------------------------------------------------------

# Check both Frankenstein and Romeo_Juliet texts

summary(texts) #summary of contents in 'texts'

inspect(texts[1]) #data on first element in 'texts' = Frankenstein


# Inspect the second element of 'texts' = Romeo & Juliet (HINT: use [2])
#
#


# Which corpora has more characters?
#
#


# Create separate object named 'frank' with Frankenstein text

frank <- texts[1] #extracts first element of 'texts' 


# Create separate object named 'juliet' with Romeo & Juliet text
#
#




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 2. PREPROCESSING # #                  IN PROGRESS: DAVIN

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# Purpose # ---------------------------------------------------------------------------------------

# Need to think of text as data, with not all data being equal in importance

# Necessary to identify patterns, without unimportant data or noise, to determine meaning of text 

# R reads every character as unique, so need to standardize 


# Remove punctuation # -----------------------------------------------------------------------------

# WHY: allows words to be read identically (ex: postcolonial vs. post-colonial)
# WHY: Punctuation and other special characters only look like more words to your computer and R.

docs <- tm_map(docs,removePunctuation) 



# Convert to lowercase # --------------------------------------------------------------------------

# WHY: allows words to be read identically (Mother vs. mother)

docs <- tm_map(docs, tolower)   
docs <- tm_map(docs, PlainTextDocument)
DocsCopy <- docs



# Stemming # ---------------------------------------------------------------------------------------

# WHY: allows words to read identically (educating vs. educated)
# This is a good practice, but the fucntin doesn't always work properly.
# You don't have to run this section of code for that reason.
docs_st <- tm_map(docs, stemDocument)   
docs_st <- tm_map(docs_st, PlainTextDocument)
writeLines(as.character(docs_st[1])) 

# Check to see if it worked:
# docs <- docs_st



# Remove white space # -----------------------------------------------------------------------------

# WHY: spacing can be unimportant in corpora
docs <- tm_map(docs, stripWhitespace)

# Check to see if it worked:
# writeLines(as.character(docs[1])) 


# Remove numbers # ---------------------------------------------------------------------------------

# WHY: page numbers and Optical Character Recognition (OCR) errors introduce noise

docs <- tm_map(docs, removeNumbers)   



# Remove stop words # ------------------------------------------------------------------------------

# WHY: common words in a language that are used more frequently than the important words

docs <- tm_map(docs, removeWords, stopwords("english"))

# Nickoal to Nathalie: Are we uploading a separate stop list?



# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 3. TEXT ANALYSIS # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# Document Term Matrix (DTM) # ---------------------------------------------------------------------

# DTM: Mathematical matrix that describes frequency of terms and needed for text analysis functions

frank_dtm <- DocumentTermMatrix(frank) #creates DTM for Frankenstein corpora


# Create a DTM called 'juliet_dtm' for Romeo & Juliet corpora
#
#


# Export DTM to .CSV file

setwd('~/Desktop/') #set working directory (MAC)

setwd('c:/Users/.../Desktop/') #WINDOWS: replace ... with your username


write.csv(as.matrix(frank_dtm), file = 'frank_dtm.csv') #Matrix of frank_dtm written to .CSV file


# Export juliet_dtm to .CSV file
#
#


# Look at both frank_dtm.csv and juliet_dtm.csv on your computer
#
#




# Word Frequencies # -------------------------------------------------------------------------------

# Identify 50 most frequent words in 'frank_dtm'

findFreqTerms(frank_dtm, lowfreq = 50) #words with frequency > 49


# Which words are used more than 100 times in 'juliet_dtm'?
#
#


# Create vector 'frank_freq' with word frequencies

frank_freq <- colSums(as.matrix(frank_dtm)) #sums frequency of each word


# Look for least and most frequently used words in Frankenstein

frank_ordered <- sort(frank_freq) #orders words in ascending frequency 

head(frank_ordered) #displays first 6 terms (= 6 least frequently used words)

tail(frank_ordered) #displays last 6 terms (= 6 most frequently used words)


# Create vector 'juliet_ordered' with word frequencies (HINT: create juliet_freq first)
#
#


# Look for least and most frequently used words in Romeo & Juliet
#
#


# Create word frequencies data frames (DF) to use in frequency graphs

frank_DF <- data.frame(word = names(frank_freq), freq = frank_freq) #dataframe of word frequencies

frank_DF100 <- subset(frank_DF, freq > 100) #subset to words with frequency > 100


# Create 'juliet_DF100' to contain words with frequency > 100 (HINT: create juliet_DF first)
#
#




# Word Clouds # ------------------------------------------------------------------------------------

# Words with specified lower frequency limit

wordcloud(names(frank_freq), frank_freq, #wordcloud of (names, from frank_freq vector)
          
          min.freq = 25) #with minimum frequency = 25


# Maximum number of words & non-random placement of words

wordcloud(names(frank_freq), frank_freq, 
          
          max.words = 100, random.order = F) #maximum number of words = 100, non-random order


# Word frequency by color

wordcloud(names(frank_freq), frank_freq, min.freq = 25, 
          
          colors = brewer.pal(8, 'Accent')) #colors from brewer palatte  (?brewer.pal for more)


# Create at least one word cloud with 'juliet_freq'
#
#




# Frequency Graphs # -------------------------------------------------------------------------------

# Plot word frequencies

ggplot(frank_DF100, #pull data from this DF
       
       aes(x = reorder(word, -freq), y = freq)) + #words in descending freq. order (x) by freq. (y)
  
  geom_bar(stat = 'identity') + #plot data as bars corresponding to y value (= freq.)
  
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + #x-axis text at 45º and flush with axis
  
  xlab('Word') + ylab('Frequency') #x- and y-axis labels


# Plot word frequencies using 'juliet_DF100' data frame
#
#




# Co-occurrence lists # ----------------------------------------------------------------------------

findAssocs(frank_dtm, 'eyes', 0.2) #IN PROGRESS: NO OCCURRENCE CORRELATIONS


# Find the associated words in 'juliet_dtm' of a word that occurs at least 50 times
#
#




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # REFERENCES # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# This workshop references the following resources:

# <https://rstudio-pubs-static.s3.amazonaws.com/265713_cbef910aee7642dc8b62996e38d2825d.html>

# <https://cran.r-project.org/web/packages/tm/vignettes/tm.pdf>




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # RESOURCES # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # CU BOULDER # #

# Center for Research Data and Digital Scholarship

# Hacky Hours: Wednesdays 4-6PM (Norlin E206)

# Events: < http://www.colorado.edu/crdds/events >

# Listserv: < https://lists.colorado.edu/sympa/subscribe/crdds-news >

# Workshop voiceovers and scripts: < https://osf.io/6jb9t/ >


# # TEXT ANALYSIS: ONLINE SUPPORT # #

# R-Bloggers, Intro to Text Analysis with R by Tal Galili (2016)
# <https://www.r-bloggers.com/intro-to-text-analysis-with-r/>

# Programming Historian: Basic Text Processing in R, by Taylor Arnold and Lauren Tilton
# <https://programminghistorian.org/lessons/basic-text-processing-in-r>


# # TEXT ANALYSIS: BOOKS & ARTICLES # #

# Matthew Jockers (2017), Text Analysis with R for Students of Literature.
# <http://www.matthewjockers.net/text-analysis-with-r-for-students-of-literature/>

# David Robinson and Julia Silge (2017), Text Mining with R. 
# <http://shop.oreilly.com/product/0636920067153.do>

# Monica Maceli (2016), Introduction to Text Mining with R for Information Professionals.
# <http://journal.code4lib.org/articles/11626>


# # R ONLINE SUPPORT # # 

# R Cheat Sheets:
# <https://www.rstudio.com/resources/cheatsheets/>

# R manuals by CRAN
# <https://cran.r-project.org/manuals.html>

# Basic Reference Card
# <https://cran.r-project.org/doc/contrib/Short-refcard.pdf>

# R for Beginners (Emmanuel Paradis)
# <https://cran.r-project.org/doc/contrib/Paradis-rdebuts_en.pdf>

# The R Guide (W. J. Owen)
# <https://cran.r-project.org/doc/contrib/Owen-TheRGuide.pdf>

# An Introduction to R (Longhow Lam)
# <https://cran.r-project.org/doc/contrib/Lam-IntroductionToR_LHL.pdf>

# Cookbook for R
# <http://www.cookbook-r.com/>

# Advanced R (Hadley Wickham)
# <http://adv-r.had.co.nz/>

# rseek: search most online R documentation and discussion forums
# <http://rseek.org/>

# The R Inferno: useful for trouble shooting errors
# <http://www.burns-stat.com/documents/books/the-r-inferno/>

# Google: endless blogs, posted Q & A, tutorials, references guides where you're often
# directed to sites such as Stackoverflow, Crossvalidated, and the R-help mailing list.


# # ONLINE TUTORIALS # #

# YouTube R channel
# <https://www.youtube.com/user/TheLearnR>

# R Programming in Coursera
# <https://www.coursera.org/learn/r-programming>

# Various R videos
# <http://jeromyanglim.blogspot.co.uk/2010/05/videos-on-data-analysis-with-r.html>



# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
