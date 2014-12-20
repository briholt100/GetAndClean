---
output: html_document
---
### Author of this repository: Brian Holt, December 2014

#### GetAndClean Repository For Coursera's Getting and Cleaning Data, Course #16, 

###### by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD 

##===========

### Directories and files included in this repository:

Directory  |   Description
---|---
test|Directory containing test data
train|Directory containing train data


File     |   Description
---|---
.Rhistory|Consider deleting 
Codebook.Rmd|Contains descriptions of necessary variables
README.md|This document
README.txt|Consider renaming; Contains description of original study and data source
activity_labels.txt|Lists names of 6 activities performed by subjects (e.g., sitting, walking)
features.txt|Lists 86 names (or fewer?) of necessary variables
features_info.txt|Contains how feature names were dervived in original study
finalTidyData.txt|Data after processing meeting "tidy" data requirements
run_analysis.R|R statistics script performed on test and train data to create tidy data


##===========

##### Obtaining data

The original data (Anguita et al., 2012) may be downloaded with this zip file:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The website hosting this data also has a full description:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



###### Directory structure needed for script to work



**References**

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Hadley Wickham. Tidy Data. Journal of Statistical Software, 59 (10), Sep 2014 http://www.jstatsoft.org/v59/i10/paper
