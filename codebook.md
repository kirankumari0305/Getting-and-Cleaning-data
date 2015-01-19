# Code Book

## Raw Data Collection
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided, you will see the following:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Data Transformation

The raw data was processed using run_analysis.R script. The code takes the raw data and clean into a tidy data set.

## Merge Test and Training data

Activity files: "Y_test.txt" and "Y_train.txt"
Subject file:  "subject_train.txt" and "subject_test.txt"
Features files: "X_test.txt" and "X_train.txt"

Merge Activity files, Subject files and Feauture files to create one dataset and put into a variable"All_Data"

##Extracts only the measurements on the mean and standard deviation for each measurement

Subset Name of Features by measurements on the mean and standard deviation into subset_data_FeaturesNames variable


##Use descriptive activity names to name the activities in the data set

A new column has been added to intermediated data set wiuth activity description.

## Appropriately labels the data set with descriptive variable names. 

*prefix t is replaced by time
*Acc is replaced by Accelerometer
*Gyro is replaced by Gyroscope
*prefix f is replaced by frequency
*Mag is replaced by Magnitude
*BodyBody is replaced by Body

## Create a tidy data set

A second, independent tidy data set ise created with the average of each variable for each activity and each subject based on the data set Final_data varaibale. the ctiday data is then written into tidydata.txt. 
