<<<<<<< HEAD
==================================================================

## Coursera Getting and Cleaning Data Project
####  Explanation of the script run_analysis.R

==================================================================

### Data Source
Where the raw data is from:

. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](smartphones) 

The data source for this project is offered by the course:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](getdata_projectfiles_UCI HAR Dataset.zip)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

==================================================================

###The run_analysis.R script will clean this data set as follows:


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

==================================================================

### Note:

For more information about this analysis R script contact: yuanhu@udel.edu

==================================================================

### License:


Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

==================================================================
=======
Getting-and-Cleaning-Data-Project
=================================
>>>>>>> c9d7e9b506edfef639395d4275a36971402dd120
