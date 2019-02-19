# Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project

DATA SOURCE:

   The data source used in this project is: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
   
   They are data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

   Brief description of the origine of the data source:
   
An experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years, where 70% of the volunteers was selected for generating the training data (train folder) and 30% the test data (test folder). Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The features measured for each record were:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The time domain signals (prefix 't' in the variables names) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (prefix 'f' in the variables names, it indicates frequency domain signals). 


PROJECT DESCRIPTION:

Tiding the data source and transform them into a dataset that can be used for later analysis.


REPOSITORY CONTENT:

A) a R script "run_analysis.R" in which the following step has been done using the data source:
   1) Merges the training and the test sets to create one data set.
   2) Extracts only the measurements on the mean and standard deviation for each measurement.
   3) Uses descriptive activity names (the one given in the "activity_labels.txt" file from the data source) to name the activities in the data set obtained in point 2).
   4) Appropriately labels the data set with descriptive variable names.
   5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   
B) the data obtained afer doing all the abovementioned steps: "TidyData.txt"

C) the "CodeBook.md" file that describs all the variables of the "TidyData.txt" file
