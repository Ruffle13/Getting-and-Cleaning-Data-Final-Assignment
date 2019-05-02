Coursera Final Assignment- Getting and Cleaning Data
================

Summary
-------

Both datasets contain a subject identifier (1-30) and an activity ("WALKING", "WALKING\_UPSTAIRS," "WALKING\_DOWNSTAIRS," "SITTING," "STANDING," or "LAYING") as the first two columns.

The remaining columns are measuremnts taken from the accelerometer of a Samsung Galaxy S smartphone.

Variables beginning with "t" refer to time domain signal measurments. Variables beginning with "f" refer to frequency domain signal measurements.

Features were normalized and bounded to be within \[-1,1\].

Variables
---------

Here are the signals measured in the experiment, where "X," "Y," or "Z" appended to the end describes the direction of the measurment.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

The variables in the dataset which are estimated from these signals are:

mean(): Mean value

std(): Standard deviation

Thus, including Subject and Activity, there are 68 fields in this dataset.
