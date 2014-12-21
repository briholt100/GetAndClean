---
title: "Smartphone CodeBook GetClean"
author: "Brian Holt"
date: "12/19/2014"
output: html_document
---

### Get and Clean data Assignment __CODEBOOK__

#### December 2014

### DATA DICTIONARY  
##### Average of Each Variable for Each Activity and Each Subject

#### Table of Contents
1. [Subjects](https://github.com/briholt100/GetAndClean/blob/master/Codebook.md#subjects)
2. [Activities](https://github.com/briholt100/GetAndClean/blob/master/Codebook.md#activities)
3. [Transformations](https://github.com/briholt100/GetAndClean/blob/master/Codebook.md#tranformations)
4. [Features](https://github.com/briholt100/GetAndClean/blob/master/Codebook.md#features)
5. [Values](https://github.com/briholt100/GetAndClean/blob/master/Codebook.md#values)
6. [References](https://github.com/briholt100/GetAndClean/blob/master/Codebook.md#references)



#####Subjects

1. Subject (Anguita et al., 2012)^1^
     + Subject Unique Identifer
     + There are 30 subjects, numbered from "1" through "30"  

#####Activities

2. Activity (Anguita et al., 2012)^1^
  + There are 6 activities performed by subjects while wearing a smartphone:  
  
      Data  |   Description
      ---|---
      Walk|Walking
      Walk_Up|Walking Up Stairs
      Walk_Down|Walking Down Stairs
      Sit|Sitting
      Stand|Standing
      Lay|Laying  
      

#####Tranformations

2. Transformations
  + Long vs Wide form, description
  + Given instructions of assignment, either Long or Wide form is acceptable (Wood, 2014)^4^.  Both meet the basic criteria of tidy data, which is that "Each varialbe forms a column, Each observation forms a row, Each type of observational unit forms a table" (Codd, 1990, as cited in Wickham, 2014)^2,3^.
    + Specifically, in Wood's FAQ, item **"Are you sure either the wide or narrow form of the data is tidy?"**  
          + *"Yes. The wide or narrow form is tidy."*
      + It is debatable whether the wide form violates the principle that Column headers should be varialbe names, not values (Wickham, 2014, pg 5, section 3.1)^3^
  + For this assignment, the long and narrow form of the data was chosen.
    + Though a matter of preference, the wide form, having 180 rows and 88 columns, is a bit more difficult to present on a screen row by row.  So, for aesthetics, 1 reason to choose the narrow form is that all columns fit on the screen, with each row presented completely. 
    + Perhaps more importantly, the long **cannot** be argued to violate the principle that Column headers should be varialbe names, not values (Wickham, 2014, pg 5, section 3.1)^3^.  In other words, it is clear that melting the data from 88 columns into 4 constitutes tidy data, and accordingly, the narrow form was chosen as it provides a much more processed and tidy data set that can be immediatelly used for further analyses.  

#####Features

4. Feature (Anguita et al., 2012)^1^
  + Original 561 features are found in features.txt and features_info.txt  
  + Each Feature name contains several parts that define what the value means.
  + Using the original Human_Activity_Recognition_README.txt document (Anguita et al. 2012)^1^, 88 variables were extracted.  These varialbes all included measurements mean and standard deviation values from the original data. Below is a list of these features.  You should notice that each feature contains either "mean" or "std" (short for standard deviation).
  + "The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  " (Anguita et al., 2012)^1^
  
  + "Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   " (Anguita et al., 2012)^1^

  + "Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)." (Anguita et al., 2012)^1^  

  + "These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions." (Anguita et al., 2012)^1^  

    + tBodyAcc-XYZ
    + tGravityAcc-XYZ
    + tBodyAccJerk-XYZ
    + tBodyGyro-XYZ
    + tBodyGyroJerk-XYZ
    + tBodyAccMag
    + tGravityAccMag
    + tBodyAccJerkMag
    + tBodyGyroMag
    + tBodyGyroJerkMag
    + fBodyAcc-XYZ
    + fBodyAccJerk-XYZ
    + fBodyGyro-XYZ
    + fBodyAccMag
    + fBodyAccJerkMag
    + fBodyGyroMag
    + fBodyGyroJerkMag
        
  + Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
        
    + gravityMean
    + tBodyAccMean
    + tBodyAccJerkMean
    + tBodyGyroMean
    + tBodyGyroJerkMean  
    
        
  + Additionally, several of these variables were used to estiamate:
        
    + meanFreq

  + #####The final set of features include:
        1. tBodyAcc.mean...X   
        2. tBodyAcc.mean...Y   
        3. tBodyAcc.mean...Z   
        4. tBodyAcc.std...X   
        5. tBodyAcc.std...Y   
        6. tBodyAcc.std...Z   
        7. tGravityAcc.mean...X   
        8. tGravityAcc.mean...Y   
        9. tGravityAcc.mean...Z   
        10. tGravityAcc.std...X   
        11. tGravityAcc.std...Y   
        12. tGravityAcc.std...Z   
        13. tBodyAccJerk.mean...X   
        14. tBodyAccJerk.mean...Y   
        15. tBodyAccJerk.mean...Z   
        16. tBodyAccJerk.std...X   
        17. tBodyAccJerk.std...Y   
        18. tBodyAccJerk.std...Z   
        19. tBodyGyro.mean...X   
        20. tBodyGyro.mean...Y   
        21. tBodyGyro.mean...Z   
        22. tBodyGyro.std...X   
        23. tBodyGyro.std...Y   
        24. tBodyGyro.std...Z   
        25. tBodyGyroJerk.mean...X   
        26. tBodyGyroJerk.mean...Y   
        27. tBodyGyroJerk.mean...Z   
        28. tBodyGyroJerk.std...X   
        29. tBodyGyroJerk.std...Y   
        30. tBodyGyroJerk.std...Z   
        31. tBodyAccMag.mean..   
        32. tBodyAccMag.std..   
        33. tGravityAccMag.mean..   
        34. tGravityAccMag.std..   
        35. tBodyAccJerkMag.mean..   
        36. tBodyAccJerkMag.std..   
        37. tBodyGyroMag.mean..   
        38. tBodyGyroMag.std..   
        39. tBodyGyroJerkMag.mean..   
        40. tBodyGyroJerkMag.std..   
        41. fBodyAcc.mean...X   
        42. fBodyAcc.mean...Y   
        43. fBodyAcc.mean...Z   
        44. fBodyAcc.std...X   
        45. fBodyAcc.std...Y   
        46. fBodyAcc.std...Z   
        47. fBodyAcc.meanFreq...X   
        48. fBodyAcc.meanFreq...Y   
        49. fBodyAcc.meanFreq...Z   
        50. fBodyAccJerk.mean...X   
        51. fBodyAccJerk.mean...Y   
        52. fBodyAccJerk.mean...Z   
        53. fBodyAccJerk.std...X   
        54. fBodyAccJerk.std...Y   
        55. fBodyAccJerk.std...Z   
        56. fBodyAccJerk.meanFreq...X   
        57. fBodyAccJerk.meanFreq...Y   
        58. fBodyAccJerk.meanFreq...Z   
        59. fBodyGyro.mean...X   
        60. fBodyGyro.mean...Y   
        61. fBodyGyro.mean...Z   
        62. fBodyGyro.std...X   
        63. fBodyGyro.std...Y   
        64. fBodyGyro.std...Z   
        65. fBodyGyro.meanFreq...X   
        66. fBodyGyro.meanFreq...Y   
        67. fBodyGyro.meanFreq...Z   
        68. fBodyAccMag.mean..   
        69. fBodyAccMag.std..   
        70. fBodyAccMag.meanFreq..   
        71. fBodyBodyAccJerkMag.mean..   
        72. fBodyBodyAccJerkMag.std..   
        73. fBodyBodyAccJerkMag.meanFreq..   
        74. fBodyBodyGyroMag.mean..   
        75. fBodyBodyGyroMag.std..   
        76. fBodyBodyGyroMag.meanFreq..   
        77. fBodyBodyGyroJerkMag.mean..   
        78. fBodyBodyGyroJerkMag.std..   
        79. fBodyBodyGyroJerkMag.meanFreq..   
        80. angle.tBodyAccMean.gravity.   
        81. angle.tBodyAccJerkMean..gravityMean.   
        82. angle.tBodyGyroMean.gravityMean.   
        83. angle.tBodyGyroJerkMean.gravityMean.   
        84. angle.X.gravityMean.   
        85. angle.Y.gravityMean.   
        86. angle.Z.gravityMean.   
  + Should some of the varialbes be excluded?  
      + In Wood's FAQ (2014)^4^, some argued that the variables similar to "angle.tBodyAccMean.gravity." should have been excluded. Though possible, the instructions were not clear enough in the assignment nor the original feature descriptions for this data munger to be competent to exclude some mean/std variables over others.  Given this, a more inclusive set of data is included simply because it would be much more easy to remove variables that are not needed than it would to add new varialbes in.

#####Values

5. mean(value) 
  + Performed in this data tidying assignment
    + Value is the mean of each feature, grouped by Subject and Feature
    + Units include
      + normalized between -1 and 1  
      



######References

1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

2. Codd EF (1990), The relational model for database management: version 2. Addison-Wesley Longman Publishing Co., Inc., Boston, MA, USA. ISBN 0-201-14192-2.

3. Hadley Wickham. Tidy Data. Journal of Statistical Software, 59 (10), Sep 2014 http://www.jstatsoft.org/v59/i10/paper

4. David Wood, David's Project FAQ December 2014, https://class.coursera.org/getdata-016/forum/thread?thread_id=50


