This file is used to describe the variables, the data, and any transformations or work that was performed to clean up the data.
run_analysis.R finishes 5 assignments for this project.

1. Merge the test and train dataset is using the rbind() function. Those files need to hav the same number of columns and referring to the same column name.
2. The grep function is used to get those columns with the mean and standard deviation measures.
3. The merge function is used to assign the descriptive names to each activity by matching the activity labels.
4. The sub function is used to give the whole dataset more descriptive names.
5. A new dataset, named tidydata.txt with all the average measures for each subject and activity type

Variables
testdata_x, testdata_y, traindata_x, traindata_y, subject_train and subject_test contain the data from the downloaded files.
testdata is the dataset merged all the test data, and traindata is the dataset merged all the train data
Alldata is the dataset merged all the test and train data.
tidydata is defined to get the average of each variable for each activity and each subject.