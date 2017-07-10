This file is part of the assignment for Getting and Cleaning Data Project. The purpose of this project is to write a R script to get and clean the original adata nd prepare tidy data that can be used for later analysis.

Description of files and connection
ReadMe.md: description of each files and explain how the scripts work and connected.
<p>CodeBook.md: describes the variables, the data, and any transformations or work to clean up the data.
run_analysis.R: get raw data and clean it to get tidy data.</p>
tidyData.txt: final output (the output data file which contains tidy data

Work steps
1. Download the raw data file, Unzip the file and save them in working directory                                               
2. Run the script run_analysis.R. This script can finish all the assignment from the project, including:                                                                         
a. Merges the training and the test sets to create one data set.                                                                                        
b. Extracts the measurements on the mean and standard deviation for each measurement.                                                                                                  
c. Uses descriptive activity names to name the activities in the data set                                                                      
d. Labels the data set with descriptive variable names.                                                      
e. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.                                          
f. generate tidydata.txt                                                                                 