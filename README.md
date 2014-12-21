---
output: html_document
---
### Author of this repository: Brian Holt, December 2014

#### GetAndClean Repository For Coursera's Getting and Cleaning Data, Course #16, 

###### by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD 

##=================================



### Table of contents

######Note: See codebook for explanations of transformations and decisions

1. Running the "run_analysis.R" script
2. Directories and files included
3. Obtaining data
4. References

##=================================

###### Running the "run_analysis.R" script

1. Obtain data, either by
  + cloning this repository
  + or by downloading and unzipping zip file:
    + https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Confirm that working directory is set to:
  + linux: "./data/UCI HAR Dataset"
  + Windows: "c:\\.....\\data\\UCI HAR Dataset"
3. Confirm that working directory contains the following directories and files:
  + Directory: test
    + containing:
        + subject_test.txt
        + X_test.txt
        + y_test.txt
  + Directory: train
    + containing:
        + subject_train.txt
        + X_train.txt
        + y_train.txt
  + Files: 
    + activity_labels.txt
    + features.txt 
    + run_analysis.R
    + codebook.md
4. Run the full script: run_analysis.R
  + You should a confirmation of your working directory, using getwd() comand.
  + The last output will include the  data frame titled "final"
5. There are a few commands at the end that have been turned into comments so that the script does not save any files to your computer.

### Directories and files included in this repository:

Directory  |   Description
---|---
test|Directory containing test data
train|Directory containing train data


File     |   Description
---|---
Codebook.Rmd|Contains descriptions of necessary variables, features, activities
README.md|This document
Human_Activity_Recognition_README.txt|Contains description of original study and data source
activity_labels.txt|Lists names of 6 activities performed by subjects (e.g., sitting, walking)
features.txt|Original list of Human Activity Recognition Features (561 total)
features_info.txt|Contains how feature names were dervived in original study
finalTidyData.txt|Data after processing meeting "tidy" data requirements
run_analysis.R|R statistics script performed on test and train data to create tidy data



##=================================

##### Obtaining data


The original data (Anguita et al., 2012) may be downloaded with this zip file:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The website hosting this data also has a full description:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones




##=================================


**References**

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Hadley Wickham. Tidy Data. Journal of Statistical Software, 59 (10), Sep 2014 http://www.jstatsoft.org/v59/i10/paper

David Wood, David's Project FAQ December 2014, https://class.coursera.org/getdata-016/forum/thread?thread_id=50
