# Coursera Data Science Data Cleaning
# Codebook for `tidyDataSet.txt`

## Overview

The data is a summarised data set from the [UCI Machine Learning Repository] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

It is a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The data from the source [data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) has been combined, summarised and labelled to create this dataset

### Citation

*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.*

## Data Cleaning operations

The original dataset has been through the following operations:

1. The subjects and the activities they were performing have been added to the two datasets, test and train
2. The two datasets, test and train, were combined into a single dataset
3. Variable labels were added for each variable
4. The mean and standard deviation variables were extracted from the combined data set 
5. Each variable was grouped by Subject and Activity and the mean calculated
6. The resulting dataset was saved to a file using write.table() with row.name=FALSE

## Variable description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency


## Variable names in cleaned data set

*"Activity"                chr     "The activity the subject was carrying out: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING"
*"Subject"                 num     "Who performed the activity; there were 30 subjects, each allocated a number between 1 and 30"
*"tBodyAcc-mean()-X"
*"tBodyAcc-mean()-Y"
*"tBodyAcc-mean()-Z"
*"tBodyAcc-std()-X"
*"tBodyAcc-std()-Y"
*"tBodyAcc-std()-Z"
*"tGravityAcc-mean()-X"
*"tGravityAcc-mean()-Y"
*"tGravityAcc-mean()-Z"
*"tGravityAcc-std()-X"
*"tGravityAcc-std()-Y"
*"tGravityAcc-std()-Z"
*"tBodyAccJerk-mean()-X"
*"tBodyAccJerk-mean()-Y"
*"tBodyAccJerk-mean()-Z"
*"tBodyAccJerk-std()-X"
*"tBodyAccJerk-std()-Y"
*"tBodyAccJerk-std()-Z"
*"tBodyGyro-mean()-X"
*"tBodyGyro-mean()-Y"
*"tBodyGyro-mean()-Z"
*"tBodyGyro-std()-X"
*"tBodyGyro-std()-Y"
*"tBodyGyro-std()-Z"
*"tBodyGyroJerk-mean()-X"
*"tBodyGyroJerk-mean()-Y"
*"tBodyGyroJerk-mean()-Z"
*"tBodyGyroJerk-std()-X"
*"tBodyGyroJerk-std()-Y"
*"tBodyGyroJerk-std()-Z"
*"tBodyAccMag-mean()"
*"tBodyAccMag-std()"
*"tGravityAccMag-mean()"
*"tGravityAccMag-std()"
*"tBodyAccJerkMag-mean()"
*"tBodyAccJerkMag-std()"
*"tBodyGyroMag-mean()"
*"tBodyGyroMag-std()"
*"tBodyGyroJerkMag-mean()"
*"tBodyGyroJerkMag-std()"
*"fBodyAcc-mean()-X"
*"fBodyAcc-mean()-Y"
*"fBodyAcc-mean()-Z"
*"fBodyAcc-std()-X"
*"fBodyAcc-std()-Y"
*"fBodyAcc-std()-Z"
*"fBodyAcc-meanFreq()-X"
*"fBodyAcc-meanFreq()-Y"
*"fBodyAcc-meanFreq()-Z"
*"fBodyAccJerk-mean()-X"
*"fBodyAccJerk-mean()-Y"
*"fBodyAccJerk-mean()-Z"
*"fBodyAccJerk-std()-X"
*"fBodyAccJerk-std()-Y"
*"fBodyAccJerk-std()-Z"
*"fBodyAccJerk-meanFreq()-X"
*"fBodyAccJerk-meanFreq()-Y"
*"fBodyAccJerk-meanFreq()-Z"
*"fBodyGyro-mean()-X"
*"fBodyGyro-mean()-Y"
*"fBodyGyro-mean()-Z"
*"fBodyGyro-std()-X"
*"fBodyGyro-std()-Y"
*"fBodyGyro-std()-Z"
*"fBodyGyro-meanFreq()-X"
*"fBodyGyro-meanFreq()-Y"
*"fBodyGyro-meanFreq()-Z"
*"fBodyAccMag-mean()"
*"fBodyAccMag-std()"
*"fBodyAccMag-meanFreq()"
*"fBodyBodyAccJerkMag-mean()"
*"fBodyBodyAccJerkMag-std()"
*"fBodyBodyAccJerkMag-meanFreq()"
*"fBodyBodyGyroMag-mean()"
*"fBodyBodyGyroMag-std()"
*"fBodyBodyGyroMag-meanFreq()"
*"fBodyBodyGyroJerkMag-mean()"
*"fBodyBodyGyroJerkMag-std()"
*"fBodyBodyGyroJerkMag-meanFreq()"
*"angle(tBodyAccMean,gravity)"
*"angle(tBodyAccJerkMean),gravityMean)"
*"angle(tBodyGyroMean,gravityMean)"
*"angle(tBodyGyroJerkMean,gravityMean)"
*"angle(X,gravityMean)"
*"angle(Y,gravityMean)"
*"angle(Z,gravityMean)"

