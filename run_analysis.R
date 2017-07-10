#This program is used for getting and cleaning data project

#Merges the training and the test sets to create one data set.

#read in the feature and label
feature <- read.table ("./features.txt")
names(feature) <- c('featureNo.', 'featureName')
activity <- read.table ("./activity_labels.txt")
names(activity) <- c('activityno.', 'activityName')

#1 read in the test data

testdata_x <- read.table("./test/X_test.txt") 
names(testdata_x) <-  feature$featureName

testdata_y <- read.table("./test/y_test.txt")
names(testdata_y) <- c('activityno.')

subject_test <- read.table ("./test/subject_test.txt")
names(subject_test) <- c('subject')

testdata <- cbind(subject_test,testdata_y,testdata_x)

#2 read in the train data

traindata_x <- read.table("./train/X_train.txt")
names(traindata_x) <-feature$featureName

traindata_y <- read.table("./train/y_train.txt")
names(traindata_y) <- c("activityno.")

subject_train <- read.table("./train/subject_train.txt")
colnames(subject_train) <- c('subject')

traindata <-cbind(subject_train, traindata_y,traindata_x)

#3 merge test and train data

Alldata <- rbind(testdata, traindata)

#Extracts only the measurements on the mean and standard deviation for each measurement.
names(Alldata) <- tolower(names(Alldata))
MeanandStdData <- Alldata[, c('subject', 'activityno.', grep("mean|std", names(Alldata), value = TRUE))]

#Uses descriptive activity names to name the activities in the data set
Alldata <- merge (activity, Alldata, by = "activityno.")
Alldata <-Alldata[-1]

#Appropriately labels the data set with descriptive variable names.

names(Alldata)<-sub("^t","Time",names(Alldata))
names(Alldata)<-sub("^f","Frequency",names(Alldata))
names(Alldata)<-gsub("\\-","",names(Alldata))
names(Alldata)<-gsub("\\()","",names(Alldata))

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)

tidydata <- group_by(Alldata, activityName, subject)
tidydata <- summarise_each(tidydata,funs(mean))

write.table(tidydata, file='tidydata.txt', row.name=FALSE)