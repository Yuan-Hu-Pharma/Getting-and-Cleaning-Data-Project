---
title: "CodeBook.md"
output: html_document
---

==================================================================

## About this Code Book
This code book describes the variables, the data, transformations or work that I performed to clean up the data.

==================================================================


## 1. variables in the tidy data set
```
 [1] "activity", type=factor,
        Each person performed six activities:
                WALKING
                WALKING_UPSTAIRS
                WALKING_DOWNSTAIRS
                SITTING
                STANDING
                LAYING
 [2] "subject", type=integer,
         An identifier of the subject who carried out the experiment
         
------------------------------------------------------------
   The following variables are numeric type, explantionation is put at end.
 [3] "tBodyAcc.mean...X"          
 [4] "tBodyAcc.mean...Y"          
 [5] "tBodyAcc.mean...Z"          
 [6] "tBodyAcc.std...X"           
 [7] "tBodyAcc.std...Y"           
 [8] "tBodyAcc.std...Z"           
 [9] "tGravityAcc.mean...X"       
[10] "tGravityAcc.mean...Y"       
[11] "tGravityAcc.mean...Z"       
[12] "tGravityAcc.std...X"        
[13] "tGravityAcc.std...Y"        
[14] "tGravityAcc.std...Z"        
[15] "tBodyAccJerk.mean...X"      
[16] "tBodyAccJerk.mean...Y"      
[17] "tBodyAccJerk.mean...Z"      
[18] "tBodyAccJerk.std...X"       
[19] "tBodyAccJerk.std...Y"       
[20] "tBodyAccJerk.std...Z"       
[21] "tBodyGyro.mean...X"         
[22] "tBodyGyro.mean...Y"         
[23] "tBodyGyro.mean...Z"         
[24] "tBodyGyro.std...X"          
[25] "tBodyGyro.std...Y"          
[26] "tBodyGyro.std...Z"          
[27] "tBodyGyroJerk.mean...X"     
[28] "tBodyGyroJerk.mean...Y"     
[29] "tBodyGyroJerk.mean...Z"     
[30] "tBodyGyroJerk.std...X"      
[31] "tBodyGyroJerk.std...Y"      
[32] "tBodyGyroJerk.std...Z"      
[33] "tBodyAccMag.mean.."         
[34] "tBodyAccMag.std.."          
[35] "tGravityAccMag.mean.."      
[36] "tGravityAccMag.std.."       
[37] "tBodyAccJerkMag.mean.."     
[38] "tBodyAccJerkMag.std.."      
[39] "tBodyGyroMag.mean.."        
[40] "tBodyGyroMag.std.."         
[41] "tBodyGyroJerkMag.mean.."    
[42] "tBodyGyroJerkMag.std.."     
[43] "fBodyAcc.mean...X"          
[44] "fBodyAcc.mean...Y"          
[45] "fBodyAcc.mean...Z"          
[46] "fBodyAcc.std...X"           
[47] "fBodyAcc.std...Y"           
[48] "fBodyAcc.std...Z"           
[49] "fBodyAccJerk.mean...X"      
[50] "fBodyAccJerk.mean...Y"      
[51] "fBodyAccJerk.mean...Z"      
[52] "fBodyAccJerk.std...X"       
[53] "fBodyAccJerk.std...Y"       
[54] "fBodyAccJerk.std...Z"       
[55] "fBodyGyro.mean...X"         
[56] "fBodyGyro.mean...Y"         
[57] "fBodyGyro.mean...Z"         
[58] "fBodyGyro.std...X"          
[59] "fBodyGyro.std...Y"          
[60] "fBodyGyro.std...Z"          
[61] "fBodyAccMag.mean.."         
[62] "fBodyAccMag.std.."          
[63] "fBodyBodyAccJerkMag.mean.." 
[64] "fBodyBodyAccJerkMag.std.."  
[65] "fBodyBodyGyroMag.mean.."    
[66] "fBodyBodyGyroMag.std.."     
[67] "fBodyBodyGyroJerkMag.mean.."
[68] "fBodyBodyGyroJerkMag.std.." 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).        
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The mean and standard deviation for activity variables are estimated.
        mean(): Mean value
        std(): Standard deviation
------------------------------------------------------------
```
==================================================================

## 2.Data Source

. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](smartphones) 

The data source for this project is offered by the course:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](getdata_projectfiles_UCI HAR Dataset.zip)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


==================================================================

## 3. Transformations or work that I performed to clean up the data



* Step 1: download the data set offered by the course and unzip it by using R function `download.file()` and `unzip()`, respectively.
* Step 2: read in both the raw training data ('./UCI HAR Dataset/train/X_train.txt', './UCI HAR Dataset/train/y_train.txt', './UCI HAR Dataset/train/subject_train.txt')and  raw testing data sets ('./UCI HAR Dataset/test/X_test.txt', './UCI HAR Dataset/test/y_test.txt', './UCI HAR Dataset/test/subject_test.txt') with R function `read.table()`.
* Step 3: combine the variable of activity and subject to the training and testing sets, and then merges the training and the test sets together by using R function `rbind()`,`cbind()` and `merge()`.
* step 4: read the features.txt file ('./UCI HAR Dataset/features.txt')into a table.
* step 5: add the "activitynum and subject" together and assign the name to each column name in the merged data set.
* step 6: Extracts only the measurements on the mean and standard deviation for each measurement.
* step 7: read the descriptive activity names from activity_labels.txt('./UCI HAR Dataset/activity_labels.txt')
* step 8: use descriptive activity names to name the activities in the data set, and save as a new column of "activity".
* step 9: labels the data set column with appropriately descriptive variable names "activity".
* step 10: average all the variable by factor activity and factor subject (using R function `aggregate()`), change the names of column 1 and 2 to  "activity"num" and "subject". It creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* step 11: save this data set as txt file ('tidydataset.txt') by using R function `write.table()`.












