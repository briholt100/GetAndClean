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

#### Important transformation explanations




1. Subject (Anguita et al., 2012)
     + Subject Unique Identifer
     + There are 30 subjects, numbered from "1" through "30"  
  
  
  
2. Activity (Anguita et al., 2012)
  + There are 6 activities performed by subjects while wearing a smartphone:  
  
      Data  |   Description
      ---|---
      Walk|Walking
      Walk_Up|Walking Up Stairs
      Walk_Down|Walking Down Stairs
      Sit|Sitting
      Stand|Standing
      Lay|Laying  
      
      


3. Feature (Anguita et al., 2012)
  + Original features are found in features.txt and features_info.txt  
  + 
      


4. mean(value) 
  + Performed in this data tidying assignment
    + Value is the mean of each feature, grouped by Subject and Feature
    + Units include
      + normalized between -1 and 1  
      




###**References**

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012












```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
