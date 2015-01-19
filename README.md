# Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

R script called run_analysis.R that does the following.
 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Installation
* Dowload the script "run_analysis.R" 
* Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
to the same folder and unzip it.
* Delete the zip file
* The directory structure should look like below

 ```
    ├── UCI HAR Dataset
    │   ├── README.txt
    │   ├── activity_labels.txt
    │   ├── features.txt
    │   ├── features_info.txt
    │   ├── test
    │   └── train
    └── run_analysis.R
```

## Dependencies

The script "run_analysis.R" depedns on the library "plyr". If you dont have installed, please install the package.


## Analysis 

* Change  the working directory in R to the installation directory "Samsung"

* run_analysis.R has the code to perform the analysis and is broken down in the 5 steps.

* CodeBook.md describes all the variables  the data, and any transformations that was performed to clean up the data

* The code contains the comment and tidydata.txt is the  final transformed data.


