# Getting and Cleaning Data Course Project

##Installation
* create a directory for the project called "samsung" 
* Dowload the script "run_analysis.R" to "samsung"
* Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
to "samsun" and unzip it.
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


## Analysis (run_analysis.R)

* Change  the working directory in R to the installation directory "Samsung"
* run_analysis.R has the code to perform the analysis and is broken down in the 5 steps.

## 'CodeBook.md' describes all the variables  the data, and any transformations that was performed to clean up the data


## The code contains the comment and tidydata.txt is the  final transformed data.


