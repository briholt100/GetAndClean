##########
#Coursera Get and Clean Data, Course Number 16 December 2014
#Script by Brian Holt
#See github repository for readme, codebook, data: https://github.com/briholt100/GetAndClean


########################################################################
#Obtain and download UCI HAR dataset
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# Simply navigate to that web address, download, then unzip.  Keep track of file location
########################################################################

########################################################################
#get and set directory to "./UCI HAR Dataset"
#This script assumes linux forward slash notation
########################################################################
getwd()
###
#setwd("Insert your directory location here/UCI HAR Dataset/")

########################################################################
#libraries needed; be sure these packages are installed first
########################################################################
#install.packages("dplyr")
#install.packages("tidyr")
library("dplyr")
library("tidyr")


########################################################################
#Create Table for Test Data 
########################################################################
subject_test<-read.table("./test/subject_test.txt",sep="")
X_test<-read.table("./test/X_test.txt",sep="") #####This will take some processing time####
Y_test<-read.table("./test/y_test.txt",sep="")
test_set<-cbind(subject_test,Y_test,X_test)

########################################################################
#Create Table for train Data 
########################################################################
subject_train<-read.table("./train/subject_train.txt",sep="")
X_train<-read.table("./train/X_train.txt",sep="")   #####This will take some even longer processing time####
Y_train<-read.table("./train/y_train.txt",sep="")
train_set<-cbind(subject_train,Y_train,X_train)

########################################################################
#Create "Set" Variable to differentiate train from test in final data.  This is unnecessary for final submission
########################################################################
test_set$Set<-1
train_set$Set<-0

########################################################################
#Merge test and train set, then sort by 1st column (Subject)
########################################################################
full_data<-rbind(test_set,train_set)
#dim(full_data)
full_data<-full_data[order(full_data[,1]),]

########################################################################
#Varialbes name manipulation
########################################################################
Activities<-read.table("./activity_labels.txt",sep="") #lists activities by name
Features<- read.csv("./features.txt",sep="",header=F) #561 list of features
table1<-sort(table((Features[,2])),decreasing=T) #creates table to find duplicates
#table1[table1>1] #lists duplicates; none have "mean" or "std"

########################################################################
#Rename columns
########################################################################
fullColNames<-make.names(Features[,2],unique=T)
fullColNames<-c("Subject","Activity",fullColNames,"Set")
colnames(full_data)<-fullColNames

KeptColumns<-grep("subject|activity|mean|std",fullColNames,ignore.case=T,value=F)
tidy<-full_data[,KeptColumns]

########################################################################
#Rename Activity from numbers to labels
########################################################################
tidy$Activity<-with(tidy,
                    ifelse(tidy$Activity==1,"Walk",
                       ifelse(tidy$Activity==2,"Walk_Up",
                        ifelse(tidy$Activity==3,"Walk_Down",
                         ifelse(tidy$Activity==4,"Sit",
                          ifelse(tidy$Activity==5,"Stand","Lay")
                          )
                         )
                        )
                      )
                    )

########################################################################
#melt the data
########################################################################
long_tidy<-gather(data=tidy,Feature, value, tBodyAcc.mean...X:angle.Z.gravityMean. , na.rm = TRUE)
final<-summarize(group_by(long_tidy,Subject,Activity,Feature),mean(value))
#str(final)

########################################################################
#quick sanity check to see if this data produces same 
#data (albeit formated diffently) to that posted in FAQ by "Brandon"
#final[final$Subject==1,]
########################################################################


########################################################################
#This will produce the tidy data as requested in the assignment
########################################################################

###This command shows the first 10 rows for subject 1

final

###This command shows the first 10 rows for subject 2

final[517:527,]

########################################################################
###creating sharable text file
########################################################################
#write.table(final,file = "./finalTidyData.txt",row.name=FALSE)

