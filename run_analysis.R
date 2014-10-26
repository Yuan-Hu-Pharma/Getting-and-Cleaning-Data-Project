## Download the data for the project
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./dataset.zip", method = "curl")
## unzip the compressed data file
unzip("./dataset.zip")

## read the measured data from training data set X
ad<-read.table("UCI HAR Dataset//train//X_train.txt")

## read the activity from training data set Y
at<-read.table("UCI HAR Dataset//train//Y_train.txt")


## read the subject from training data set Y
as<-read.table("UCI HAR Dataset//train//subject_train.txt")

## combine the variable of activity and subject to the training set
adata<-cbind(ad,at,as)


## read the measured data from testing data set  X
bd<-read.table("UCI HAR Dataset//test/X_test.txt")

## read the activity from testing data set Y
bt<-read.table("UCI HAR Dataset//test/Y_test.txt")


## read the subject from training data set Y
bs<-read.table("UCI HAR Dataset//test//subject_test.txt")

## combine the variable of activity and subject to the testing set
bdata<-cbind(bd,bt,bs)

## Merges the training and the test sets to create one data set.
mydata<-rbind(adata,bdata)

## read the features.txt file into a table. 
aname<-read.table("UCI HAR Dataset//features.txt")

## add the "activitynum and subject" together and assign the name to each column name in the merged data set
names(mydata)<-aname[,2]
names(mydata)[562:563]<-c("activitynum","subject")

## Extracts only the measurements on the mean and standard deviation for each measurement. 
mydatamd<-mydata[, grepl( "mean\\(\\)|std\\(\\)|activitynum|subject" , names(mydata))]

## read the descriptive activity names from activity_labels.txt
act<-read.table("UCI HAR Dataset//activity_labels.txt")

## use descriptive activity names to name the activities in the data set, and save as a new column of "activity"
mergedata<-merge(mydatamd, act, by.x="activitynum", by.y="V1")


## Appropriately labels the data set column V2 with descriptive variable names "activity".
names(mergedata)[69]<-"activity"


#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## average all the variable by factor activity and factor subject.
aggdata <-aggregate(mergedata[,2:67], by=list(mergedata$activity, mergedata$subject), FUN=mean)
## change the names of column 1 and 2 to  "activity"num" and "subject".
names(aggdata)[1:2]<-c("activity","subject")
write.table(aggdata, "tidydataset.txt", row.name=FALSE)
