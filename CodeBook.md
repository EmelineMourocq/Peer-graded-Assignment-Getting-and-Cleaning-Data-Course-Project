LIST VARIABLES NAMES AND THEIR VALUES

activityname                character         WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
subjectid                   integer           1 to 30
tbodyacc-mean()-x           number            normalized and bounded within [-1,1]
tbodyacc-mean()-y           number            normalized and bounded within [-1,1]
tbodyacc-mean()-z           number            normalized and bounded within [-1,1]
tgravityacc-mean()-x        number            normalized and bounded within [-1,1]
tgravityacc-mean()-y        number            normalized and bounded within [-1,1]
tgravityacc-mean()-z        number            normalized and bounded within [-1,1]
tbodyaccjerk-mean()-x       number            normalized and bounded within [-1,1]
tbodyaccjerk-mean()-y       number            normalized and bounded within [-1,1]
tbodyaccjerk-mean()-z       number            normalized and bounded within [-1,1]
tbodygyro-mean()-x          number            normalized and bounded within [-1,1]
tbodygyro-mean()-y          number            normalized and bounded within [-1,1]
tbodygyro-mean()-z          number            normalized and bounded within [-1,1]
tbodygyrojerk-mean()-x      number            normalized and bounded within [-1,1]
tbodygyrojerk-mean()-y      number            normalized and bounded within [-1,1]
tbodygyrojerk-mean()-z      number            normalized and bounded within [-1,1]
tbodyaccmag-mean()          number            normalized and bounded within [-1,1]
tgravityaccmag-mean()       number            normalized and bounded within [-1,1]
tbodyaccjerkmag-mean()      number            normalized and bounded within [-1,1]
tbodygyromag-mean()         number            normalized and bounded within [-1,1]
tbodygyrojerkmag-mean()     number            normalized and bounded within [-1,1]
fbodyacc-mean()-x           number            normalized and bounded within [-1,1]
fbodyacc-mean()-y           number            normalized and bounded within [-1,1]
fbodyacc-mean()-z           number            normalized and bounded within [-1,1]
fbodyacc-meanfreq()-x       number            normalized and bounded within [-1,1]
fbodyacc-meanfreq()-y       number            normalized and bounded within [-1,1]
fbodyacc-meanfreq()-z       number            normalized and bounded within [-1,1]
fbodyaccjerk-mean()-x       number            normalized and bounded within [-1,1]
fbodyaccjerk-mean()-y       number            normalized and bounded within [-1,1]
fbodyaccjerk-mean()-z       number            normalized and bounded within [-1,1]
fbodyaccjerk-meanfreq()-x   number            normalized and bounded within [-1,1]
fbodyaccjerk-meanfreq()-y   number            normalized and bounded within [-1,1]
fbodyaccjerk-meanfreq()-z   number            normalized and bounded within [-1,1]
fbodygyro-mean()-x          number            normalized and bounded within [-1,1]
fbodygyro-mean()-y          number            normalized and bounded within [-1,1]
fbodygyro-mean()-z          number            normalized and bounded within [-1,1]
fbodygyro-meanfreq()-x      number            normalized and bounded within [-1,1]
fbodygyro-meanfreq()-y      number            normalized and bounded within [-1,1]
fbodygyro-meanfreq()-z      number            normalized and bounded within [-1,1]
fbodyaccmag-mean()          number            normalized and bounded within [-1,1]
fbodyaccmag-meanfreq()      number            normalized and bounded within [-1,1]
fbodyaccjerkmag-mean()      number            normalized and bounded within [-1,1]
fbodyaccjerkmag-meanfreq()  number            normalized and bounded within [-1,1]
fbodygyromag-mean()         number            normalized and bounded within [-1,1]
fbodygyromag-meanfreq()     number            normalized and bounded within [-1,1]
fbodygyrojerkmag-mean()     number            normalized and bounded within [-1,1]
fbodygyrojerkmag-meanfreq() number            normalized and bounded within [-1,1]
tbodyacc-std()-x            number            normalized and bounded within [-1,1]
tbodyacc-std()-y            number            normalized and bounded within [-1,1]
tbodyacc-std()-z            number            normalized and bounded within [-1,1]
tgravityacc-std()-x         number            normalized and bounded within [-1,1]
tgravityacc-std()-y         number            normalized and bounded within [-1,1]
tgravityacc-std()-z         number            normalized and bounded within [-1,1]
tbodyaccjerk-std()-x        number            normalized and bounded within [-1,1]
tbodyaccjerk-std()-y        number            normalized and bounded within [-1,1]
tbodyaccjerk-std()-z        number            normalized and bounded within [-1,1]
tbodygyro-std()-x           number            normalized and bounded within [-1,1]
tbodygyro-std()-y           number            normalized and bounded within [-1,1]
tbodygyro-std()-z           number            normalized and bounded within [-1,1]
tbodygyrojerk-std()-x       number            normalized and bounded within [-1,1]
tbodygyrojerk-std()-y       number            normalized and bounded within [-1,1]
tbodygyrojerk-std()-z       number            normalized and bounded within [-1,1]
tbodyaccmag-std()           number            normalized and bounded within [-1,1]
tgravityaccmag-std()        number            normalized and bounded within [-1,1]
tbodyaccjerkmag-std()       number            normalized and bounded within [-1,1]
tbodygyromag-std()          number            normalized and bounded within [-1,1]
tbodygyrojerkmag-std()      number            normalized and bounded within [-1,1]
fbodyacc-std()-x            number            normalized and bounded within [-1,1]
fbodyacc-std()-y            number            normalized and bounded within [-1,1]
fbodyacc-std()-z            number            normalized and bounded within [-1,1]
fbodyaccjerk-std()-x        number            normalized and bounded within [-1,1]
fbodyaccjerk-std()-y        number            normalized and bounded within [-1,1]
fbodyaccjerk-std()-z        number            normalized and bounded within [-1,1]
fbodygyro-std()-x           number            normalized and bounded within [-1,1]
fbodygyro-std()-y           number            normalized and bounded within [-1,1]
fbodygyro-std()-z           number            normalized and bounded within [-1,1]
fbodyaccmag-std()           number            normalized and bounded within [-1,1]
fbodyaccjerkmag-std()       number            normalized and bounded within [-1,1]
fbodygyromag-std()          number            normalized and bounded within [-1,1]
fbodygyrojerkmag-std()      number            normalized and bounded within [-1,1]


VARIABLE NAMES EXPLAINATION

  Two first variables:

"activityname" -> name of the activity performed by the subject (See README.md file for more details)

"subjectid" -> number corresponding to the ID of the subject performing the activities
        

  Decomposition of the other variable names:
  
First letter: "t" for time domain signals or
              "f" for frequency domain signals
              
then  "body" or
      "gravity" (note only meadured for the accelerometer)
      
then  "gyro" for gyroscope or
      "acc" for accelerometer
      
then  "jerk" for Jerk signals or
      "mag" for magnitude of these three-dimensional signals or
      "jerkmag" for 
      
then  "std()" for Standard deviation or 
      "mean()" for Mean value or 
      "meanfreq()" for Weighted average of the frequency components to obtain a mean frequency

then "-x" "-y" "-z" corresponding to the different axis of the domain studied, respectivelly x axis, y axis and z axis


  General explainations: (for more details see README.md file)
  
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These signals were used to estimate variables of the feature vector for each pattern:'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ).

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Variables names without -x, -y or -z at the end are vectors obtained by averaging the signals in a signal window sample.

For all of those variables mean, standard deviation and a weighted average of the frequency components to obtain a mean frequency was estimated

VALUES
The number variables are average for each activity and each subject of each meansurments mentioned herebefore.


