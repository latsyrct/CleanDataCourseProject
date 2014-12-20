Codebook
===========

Data Set Information:
======================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Attribute Information:
=======================

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Variable
=========

Variable 	|	Description
----------|-------------
id	|	Subject ID
activity	|	The activity performed
tBodyAcc.std...X	|	Standard deviation of time for acceleration of body for X direction
tBodyAcc.std...Y	|	Standard deviation of time for acceleration of body for Y direction
tBodyAcc.std...Z	|	Standard deviation of time for acceleration of body for Z direction
tGravityAcc.std...X	|	Standard deviation of time of acceleration of gravity for X direction
tGravityAcc.std...Y	|	Standard deviation of time of acceleration of gravity for Y direction
tGravityAcc.std...Z	|	Standard deviation of time of acceleration of gravity for Z direction
tBodyAccJerk.std...X	|	Standard deviation of time of body acceleration jerk for X direction
tBodyAccJerk.std...Y	|	Standard deviation of time of body acceleration jerk for Y direction
tBodyAccJerk.std...Z	|	Standard deviation of time of body acceleration jerk for Z direction
tBodyGyro.std...X	|	Standard deviation of body gyroscope measurement for X direction
tBodyGyro.std...Y	|	Standard deviation of body gyroscope measurement for Y direction
tBodyGyro.std...Z	|	Standard deviation of body gyroscope measurement for Z direction
tBodyGyroJerk.std...X	|	Standard deviation of jerk signal of body for X direction
tBodyGyroJerk.std...Y	|	Standard deviation of jerk signal of body for Y direction
tBodyGyroJerk.std...Z	|	Standard deviation of jerk signal of body for Z direction
tBodyAccMag.std..	|	Standard deviation of magnitude of body Acc
tGravityAccMag.std..	|	Standard deviation of gravity acceleration magnitude
tBodyAccJerkMag.std..	|	Standard deviation of magnitude of body acceleration jerk
tBodyGyroMag.std..	|	Standard deviation of magnitude of body gyroscope measurement
tBodyGyroJerkMag.std..	|	Standard deviation of magnitude of body body gyroscope jerk measurement
fBodyAcc.std...X	|	Standard deviation of frequency of body acceleration for X direction
fBodyAcc.std...Y	|	Standard deviation of frequency of body acceleration for Y direction
fBodyAcc.std...Z	|	Standard deviation of frequency of body acceleration for Z direction
fBodyAccJerk.std...X	|	Standard deviation frequency of body accerlation jerk for X direction
fBodyAccJerk.std...Y	|	Standard deviation frequency of body accerlation jerk for Y direction
fBodyAccJerk.std...Z	|	Standard deviation frequency of body accerlation jerk for Z direction
fBodyGyro.std...X	|	Standard deviation frequency of body gyroscope measurement for X direction
fBodyGyro.std...Y	|	Standard deviation frequency of body gyroscope measurement for Y direction
fBodyGyro.std...Z	|	Standard deviation frequency of body gyroscope measurement for Z direction
fBodyAccMag.std..	|	Standard deviation of frequency of body acceleration magnitude
fBodyBodyAccJerkMag.std..	|	Standard deviation of frequency of body acceleration jerk magnitude
fBodyBodyGyroMag.std..	|	Standard deviation of frequency of magnitude of body gyroscope measurement
fBodyBodyGyroJerkMag.std..	|	Standard deviation frequency of magnitude of body gyroscope jerk measurement
tBodyAcc.mean...X	|	Mean of time for acceleration of body for X direction
tBodyAcc.mean...Y	|	Mean of time for acceleration of body for Y direction
tBodyAcc.mean...Z	|	Mean of time for acceleration of body for Z direction
tGravityAcc.mean...X	|	Mean of time of acceleration of gravity for X direction
tGravityAcc.mean...Y	|	Mean of time of acceleration of gravity for Y direction
tGravityAcc.mean...Z	|	Mean of time of acceleration of gravity for Z direction
tBodyAccJerk.mean...X	|	Mean of time of body acceleration jerk for X direction
tBodyAccJerk.mean...Y	|	Mean of time of body acceleration jerk for Y direction
tBodyAccJerk.mean...Z	|	Mean of time of body acceleration jerk for Z direction
tBodyGyro.mean...X	|	Mean of body gyroscope measurement for X direction
tBodyGyro.mean...Y	|	Mean of body gyroscope measurement for Y direction
tBodyGyro.mean...Z	|	Mean of body gyroscope measurement for Z direction
tBodyGyroJerk.mean...X	|	Mean of jerk signal of body for X direction
tBodyGyroJerk.mean...Y	|	Mean of jerk signal of body for Y direction
tBodyGyroJerk.mean...Z	|	Mean of jerk signal of body for Z direction
tBodyAccMag.mean..	|	Mean of magnitude of body Acc
tGravityAccMag.mean..	|	Mean of gravity acceleration magnitude
tBodyAccJerkMag.mean..	|	Mean of magnitude of body acceleration jerk
tBodyGyroMag.mean..	|	Mean of magnitude of body gyroscope measurement
tBodyGyroJerkMag.mean..	|	Mean of magnitude of body body gyroscope jerk measurement
fBodyAcc.mean...X	|	Mean of frequency of body acceleration for X direction
fBodyAcc.mean...Y	|	Mean of frequency of body acceleration for Y direction
fBodyAcc.mean...Z	|	Mean of frequency of body acceleration for Z direction
fBodyAcc.meanFreq...X	|	Weighted average of the frequency of body accerlation jerk for X direction
fBodyAcc.meanFreq...Y	|	Weighted average of the frequency of body accerlation jerk for Y direction
fBodyAcc.meanFreq...Z	|	Weighted average of the frequency of body accerlation jerk for Z direction
fBodyAccJerk.mean...X	|	Mean frequency of body accerlation jerk for X direction
fBodyAccJerk.mean...Y	|	Mean frequency of body accerlation jerk for Y direction
fBodyAccJerk.mean...Z	|	Mean frequency of body accerlation jerk for Z direction
fBodyAccJerk.meanFreq...X	|	Weighted average of the frequency of body accerlation jerk for X direction
fBodyAccJerk.meanFreq...Y	|	Weighted average of the frequency of body accerlation jerk for Y direction
fBodyAccJerk.meanFreq...Z	|	Weighted average of the frequency of body accerlation jerk for Z direction
fBodyGyro.mean...X	|	Mean frequency of body gyroscope measurement for X direction
fBodyGyro.mean...Y	|	Mean frequency of body gyroscope measurement for Y direction
fBodyGyro.mean...Z	|	Mean frequency of body gyroscope measurement for Z direction
fBodyGyro.meanFreq...X	|	Weighted average of the frequency of body gyroscope measurement for X direction
fBodyGyro.meanFreq...Y	|	Weighted average of the frequency of body gyroscope measurement for Y direction
fBodyGyro.meanFreq...Z	|	Weighted average of the frequency of body gyroscope measurement for Z direction
fBodyAccMag.mean..	|	Mean of frequency of body acceleration magnitude
fBodyAccMag.meanFreq..	|	Weighted average of the of frequency of body acceleration magnitude
fBodyBodyAccJerkMag.mean..	|	Mean of frequency of body acceleration jerk magnitude
fBodyBodyAccJerkMag.meanFreq..	|	Weighted average of the of frequency of body acceleration jerk magnitude
fBodyBodyGyroMag.mean..	|	Mean of frequency of magnitude of body gyroscope measurement
fBodyBodyGyroMag.meanFreq..	|	Weighted average of the of frequency of magnitude of body gyroscope measurement
fBodyBodyGyroJerkMag.mean..	|	Mean frequency of magnitude of body gyroscope jerk measurement
fBodyBodyGyroJerkMag.meanFreq..	|	Weighted average of the frequency of magnitude of body gyroscope jerk measurement
