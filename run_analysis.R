###################################################################
## Coursera Getting and Cleaning Data Course Project
## Kiran KUmari
## 2015-01-19

# This script used the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and will perform below:
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#####################################################################

# Set the working directory
> setwd("C:/Users/kira7812/Desktop/DataScienceTraining/UCI HAR Dataset")

#1.Merges the training and the test sets to create one data set.

# Read in the data from the files

#Read Activity files
Activity_test <- read.table("test/y_test.txt")
Activity_train <- read.table("train/y_train.txt")

#Read Subject files
subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")

#Read Features file
Feature_test <- read.table("test/X_test.txt")
Feature_train <- read.table("train/X_train.txt")

# Merge the data tables by rows

data_Subject <- rbind(subject_train, subject_test)
data_Activity<- rbind(Activity_train, Activity_test)
data_Features<- rbind(Feature_train, Feature_test)

#Set Column names
names(data_Subject)<-c("subject")
names(data_Activity)<- c("activity")
data_FeaturesNames <- read.table("features.txt")
names(data_Features)<- data_FeaturesNames$V2

#Total data
data_Combine <- cbind(data_Subject, data_Activity)
All_Data <- cbind(data_Features, data_Combine)


#2.Extracts only the measurements on the mean and standard deviation for each measurement

subset_data_FeaturesNames<-data_FeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", data_FeaturesNames$V2)]

Extract_Names<-c(as.character(subset_data_FeaturesNames), "subject", "activity" )
All_Data<-subset(All_Data,select=Extract_Names)


#3. Uses descriptive activity names to name the activities in the data set

activities <- read.table("activity_labels.txt")

#4. Appropriately labels the data set with descriptive variable names. 

names(All_Data)<-gsub("^t", "time", names(All_Data))
names(All_Data)<-gsub("^f", "frequency", names(All_Data))
names(All_Data)<-gsub("Acc", "Accelerometer", names(All_Data))
names(All_Data)<-gsub("Gyro", "Gyroscope", names(All_Data))
names(All_Data)<-gsub("Mag", "Magnitude", names(All_Data))
names(All_Data)<-gsub("BodyBody", "Body", names(All_Data))

#5.From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

library(plyr)

Final_Data<-aggregate(.~subject + activity, All_Data, mean)

Final_Data<-Final_Data[order(Final_Data$subject,Final_Data$activity),]

#write final data into text file
write.table(Final_Data, file = "tidydata.txt",row.name=FALSE)

