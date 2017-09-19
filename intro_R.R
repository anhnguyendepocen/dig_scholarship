## INTRO TO R WORKSHOP
## Center for Research Data and Digital Scholarship
## University of Colorado, Boulder

## N. Chardon
## 20 Sept 2017

## Aims: 
## 1. Install R and RStudio
## 2. Understand R & its interface
## 3. Create objects
## 4. Practice basic functions to explore a data set 
## 5. Check data set with basic functions
## 6. Manipulate data set
## 7. Save data files for future use 
## 8. Write organized scripts
## 9. Read in text and numeric data files

## Recommended Homework:
## 1. Practice newly learned skills with own dataset
## 2. Run through 'ADVANCED' sections in this script

## Disclaimer: This script was written by Nathalie Chardon and reflects her coding style. 
## The University of Colorado, Boulder takes no responsibility for the content.


## Clear R environment
rm(list=ls())


## Generated Dataframe(s):
load('~/LOCATION/FILENAME.RData') #DESCRIPTION




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 1. INSTALL R AND RSTUDIO # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # DOWNLOAD R # # ---------------------------------------------------------------------------------

# Visit < https://cran.r-project.org/ >

# Choose your operating system (OS)

# Download base R package file (.exe for PC and .dmg for Mac)

# If prompted: 'run' don't 'save' file

# Follow any remaining prompts


# # DOWNLOAD R STUDIO # # --------------------------------------------------------------------------

# Visit < https://www.rstudio.com/products/rstudio/download/ >

# Download free version for your OS

# Follow prompts




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # WELCOME! # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# What's your name?


# How is R used in your field/amongst your colleagues? 




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 2. UNDERSTAND R AND ITS USER INTERFACE # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # WHAT IS R? # # ---------------------------------------------------------------------------------

# 1. Open source programming language first released in 1997 with several updates released each year

# 2. Software environment for statistical computing and graphics

# 3. Interpreted language typically accessed through command-line interpreter

# 4. Widely used for statistics, data mining, and developing statistical software

# 5. Used across a variety of fields in the sciences and humanities

# 6. Allows user to create and distribute new functions and packages

# 7. Different editors available (e.g., RStudio, TinnR)


# # WHAT IS A SCRIPT? # # --------------------------------------------------------------------------

# Text file (.R) with executable written code and user comments 


# # GETTING STARTED # # ----------------------------------------------------------------------------

# Open RStudio

# Set preferences: RStudio --> Preferences 

  # General: restore most recent

  # Code: 
    # Editing: tab width, matching parens/quotes
    # Display: show margin column (< 100)

  # Appearance: option to change font, size, theme

  # Pane layout: source, console, environment, files/plots/etc.

  # Git/SVN: option to enable version control


# Keyboard shortcuts: Tools --> Keyboard Shortcuts


# # CONSOLE # # ------------------------------------------------------------------------------------

# Current version is listed 

# Executing commands:

# 1. '>' is the prompt (i.e. "Hi I'm R, what do you want me to do now?")

# 2. Type code (i.e. "Hi I'm your new user, this is what I want you to do.") in Console or R Script

# 3. Hit 'enter' in Console or 'run' in Script


# How to cite R

citation() #execute this command in both the Console and Script

# Keyboard shortcut:	Ctrl+Enter (Windows) or	Command+Enter (Mac)


# Use 'up' arrow to retrieve last function

# Common mistake: unclosed bracket(s) --> '+' indicates unfinished command --> fix or 'Esc' to exit


# # PRACTICE SOME CALCULATIONS # # -----------------------------------------------------------------

# Using operators

3 * 4 - 2

12 / 6

2 ^ 4


# Using functions

print('I am a new R user and this is my first text output!') #prints text

sum(2, 3, 4) #sums numbers

sum(1:10) #sums numbers in a sequence from 1 to 10

prod(2, 5) #multiplies numbers

sqrt(25) #square root

round(198.5894503, digits=4) #rounds number to specified digits

signif(198.5894503, digits=4) #gives number to specified total digits in scientific notation

abs(-103) #absolute value

cos(pi) #cosine of number in radians

rep('hello', 3) #repeats a specified object a specified number of times


# Now, write 5 calculations with operators and 5 with functions and write answer as comment with '#'
#
#


# Not sure what a function does?

?prod




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 3. DATA, OBJECTS, LISTS, MATRICES, DFs, ARRAYS # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # DATA # # ---------------------------------------------------------------------------------------

# Why digitize? 
#
#
# --> Allows analyses with computer program


# What is a data structure? 
#
#
# --> A certain way to organize digital data so it can be efficiently used


# # DIFFERENT OBJECTS # # --------------------------------------------------------------------------

# Object: data structure with attributes of a certain class 


# List: vector containing data (numeric AND text)

# EXAMPLE: List of data (e.g. words or numbers) not belonging in certain category


# Matrix: data in 2D rectangular layout (numeric OR text)


# Dataframe (DF): list of vectors of equal length (numeric AND text)

# EXAMPLE: 
data(mtcars)

# Open mtcars from Environment

# What do the rows and columns represent? 
#
#
# --> Recorded observations (rows) for specified variables (columns)

# Why can this not be a matrix?
#
#
# --> Contains both text and numeric data


# Array: an object with more than 2D (numeric and text)

# EXAMPLE: If car models were tested every year for the same variables, could make array


# # SIMPLE OBJECTS # # -----------------------------------------------------------------------------

# Assigment operator: creates an object in R's memory (the 'Environment')

# Keyboard shortcut: Alt+- (Windows) or	Option+- (Mac)

x <- 7

y <- 'bonjour' #quotation marks for words

c <- c('bonjour', 'gruezi') #concatenate two elements

z <- rep('gruezi', 3) #repeat function

k <- seq(0, 20, 4) #sequence function: from, to, by


# Now, create 3 objects and look at them
#
#


# What happens with: 

x1 <- x + k #x1 = 

x2 <- x * k #x2 = 

x3 <- k / x #x3 = 

x4 <- k * 0.5 #x4 = 


# Now, use your objects to perform 3 calculations as above
#
#


# # LISTS # # --------------------------------------------------------------------------------------

ll <- c(x, y, z, k) #concatenates elements created above

# Now, look at this list
#
#


class(ll) #class of ll?

length(ll) #length of ll?


# Now, create your own list
#
#


# What class is your list? 
#
#


# How long is your list?
#
#


# Note: We discuss indexing of dataframes below, but with lists are indexed with:
# [ ] to return a list with dataframe in it
# [[ ]] to return the actual dataframe


# # MATRICES # # -----------------------------------------------------------------------------------

# Matrix: fills in elements vertically by column

mm1 <- matrix(data = x4, ncol=2) #specify columns

mm2 <- matrix(data = x4, nrow=2) #specify rows

mm3 <- matrix(data = x4, nrow=2, byrow=TRUE) #fill elements horizontally by row


# Now, create 2 matrices of different dimensions
#
#


# # DATAFRAMES # # ---------------------------------------------------------------------------------

# Create a vector of colors of 5 clothes you're wearing

mycolors <- c('red', 'black', 'blue', 'blue', 'white') 


# Indexing in 1D

mycolors[2] #the 2 represents = 


# Create vector with your preference for each color 

myprefs <- c(2, 3, 1, 1, 4) 


# Ask your neighbor for their preferences 

yourprefs <- c(3, 1, 2, 2, 4) 


# Create DF out of your three vectors

dd <- data.frame(colors = mycolors, 
                 preference = myprefs, 
                 preference_neighbor = yourprefs) #combine these 3 vectors


# Now, look at dd: how did R know to match your preference to a certain color?
#
#


# Indexing in 2D

# I. Using brackets: R thinks in [ROWS, COLUMNS]

dd[2,1] #this is =

# II. Using $ : element name (i.e. column names of our DF)

dd$colors[2] #this is =


# What color is in the 3rd row? Color =
#
#


# Change column names

colnames(dd) <- c('colors', 'pref', 'pref_neighb')


# Now, look at dd: what changed? Change =
#
#


# ADD TO DF # --------------------------------------------------------------------------------------

# I. Add new vector to exisiting DF

dd$clothes <- c('hat', 'pants', 'scarf', 'socks') #clothes you are wearing in 'mycolors'


# ERROR: what happened? Error because = 


# Now, add a vector as dd$clothes that works
#
#


# II. First create vector then add as new column

# Is your neighbor wearing clothes in those colors (yes=1, no=0)?

clothes_neighb <- c(1, 0, 1, 1, 0) 

dd <- cbind(dd, clothes_neighb) #bind vector as new column to existing DF


# Now, look at dd. What changed? Change = 
#
#




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 10 MINUTE BREAK # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 4. EXPLORE DATASET WITH BASIC FUNCTIONS # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # DIMENSIONS OF DF # # ---------------------------------------------------------------------------

dim(dd) #rows, columns = 

nrow(dd) #number of rows = 

ncol(dd) #number of columns =


# # STRUCTURE # # ----------------------------------------------------------------------------------

str(dd) #columns are numeric, character, or factor = 


# Factor: variables that have limited number of different values

levels(dd$colors) #number of categories in the factor variable 'color' =


# Numerical: decimal values (continuous, discrete, integers, etc.)

is.numeric(dd$pref) #numeric =

is.numeric(dd$clothes) #numeric =


# Character: an object made up of string values

dd$colors <- as.character(dd$colors) #change to character for future analysis/adding data to DF

is.character(dd$colors) #character = 


# Now, check structure of dataframe again: what changed? Change = 
#
#


# ADVANCED: be aware of any numeric variables as factor!

dd$clothes_neighb <- as.factor(dd$clothes_neighb) #make 'pref' variable a factor variable

str(dd$clothes_neighb) #check structure of this column

dd$clothes_altered <- as.numeric(dd$clothes_neighb) #factor LEVEL, not orginal numeric value, assigned

dd$clothes_altered_correct <- as.numeric(as.character(dd$clothes_neighb)) #correct tranformation




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 5. CHECK DATA WITH BASIC FUNCTIONS # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# Summary function

summary(dd) #of every column

summary(dd$pref) #of one column


# Data maximum

max(dd$pref)


# Data minimum

min(dd$pref)


# Now, what is the minimum, maximum, and mean of your neighbor's preferences?
#
#


# Data range

range(dd$pref)


# Unique entries

unique(dd$colors) #lists all unique entries

length(unique(dd$colors)) #number of unique entries


# Now, what are the unique entries for your clothes?
#
#


# How many different unique entries are there?
#
#




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 6. DF MANIPULATION # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # NA VALUES # # ----------------------------------------------------------------------------------

# What if you don't have a preference for a color in 'mycolors'?

dd$no_pref <- c('NA', 3, 1, 1, 'NA') #insert 'NA' for color you don't have a specific preference for


# Calculate mean of your new preferences

mean(dd$no_pref) #ERROR: 'argument is not numeric or logical'

# Check structure of your DF
#
#


# Change character to numeric

dd$no_pref <- as.numeric(dd$no_pref) #NAs introduced, ok because we know we have 'NA' values


# Try calculating mean again
#
#


#Why is mean NA? --> R can't do math with 'NA' values

mean(dd$no_pref, na.rm=T) #tell R to remove 'NA' values for purposes of calculation


# Locate your 'NA' values

which(is.na(dd$no_pref)) #where are your 'NA' values = 


# ADVANCED: Now, how many NA values do you have in no_pref?
#
#


# # SORT DATA # # ----------------------------------------------------------------------------------

sort(dd$pref) #sorts by increasing numeric order

dd_rev <- dd[order(dd$pref),] #orders entire DF by 'pref' 




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 7. SAVE / EXPORT DATA # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # SAVE # # ---------------------------------------------------------------------------------------

# Save DF created in R: useful for future use, email to collaborators, etc.

save(dd, file='/PATH/PROJECT_FOLDER/r_files/dd.RData') #saves DF as .RData


# # EXPORT # # -------------------------------------------------------------------------------------

# Export DF to Excel: useful for publication tables, collaborators that don't use R, etc. 

install.packages('openxlsx') #install the corresponding R package

library(openxlsx) #load package into environment


write.xlsx(dd, file='/PATH/PROJECT_FOLDER/data_2017/dd.xlsx') #export DF as xlsx file

write.csv(dd, file='/PATH/PROJECT_FOLDER/data_2017/dd.csv') #or export DF as CSV file



# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 8. WRITING SCRIPTS # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # ORGANIZING YOUR SCRIPT # # ---------------------------------------------------------------------

# Initialize each script with general information (e.g., project, name, date, aims, generated DFs)

# Clear R's memory at beginning of script: rm(list=ls())

# Write descriptive comments using '#' that are useful to YOU

# Split code into manageable sections and limit length of text line

# Use '_' instead of spaces

# Only keep relevant code in main body of script

# Dedicate a folder within each project folder on computer for corresponding R scripts


# Set a directory to prevent re-typing path every time
# use 'tab' key for options after each '/'

setwd('/Users/nathaliechardon/Desktop/DSI_GA/workshops/') #full path

setwd('~/Desktop/DSI_GA/workshops/') #abbreviated path with '~'


# Save .RData files in ONE place (e.g. 'project_name/r_files.RData') for easier future searching

# Save generated DFs in one place (e.g. 'project_name/data_YEAR.xlsx)

# Save scripts in one place (e.g. 'project_name/scripts/)




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # 9. READ IN DATA # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# Load .CSV file: use this type of file whenever possible

data_C <- read.csv('data_2017/dd.csv')


# Load .XLSX file: use for files with multiple sheets

data_X <- read.xlsx('data_2017/dd.xlsx', sheet=1)


# Load .RData file: use for data frames already created in R

data_R <- load('data_2017/dd.RData')




# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# # RESOURCES # # 

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# # CU BOULDER # #

# Center for Research Data and Digital Scholarship: various events throughout semester
  # Hack Hours: Wednesdays 4-6PM
  # <http://www.colorado.edu/crdds/>

# Laboratory for Interdisciplinary Statistical Analysis
  # <http://www.colorado.edu/lab/lisa/resources>


# # ONLINE SUPPORT # # 

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
# directed to sites such as stackoverflow, crossvalidated, and the R-help mailing list


# # ONLINE TUTORIALS # #

# YouTube R channel
  # <https://www.youtube.com/user/TheLearnR>

# R Programming in Coursera
  # <https://www.coursera.org/learn/r-programming>

# Various R videos
  # <http://jeromyanglim.blogspot.co.uk/2010/05/videos-on-data-analysis-with-r.html>



