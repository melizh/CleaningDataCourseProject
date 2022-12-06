# CleaningDataCourseProject
Coursera Getting and Cleaning Data Course Project

This repository contains a script used to clean the UCI Human Activity Recognition Using Smartphones (HAR) dataset and a text file containing the resulting dataset.  Here is a list of the included files:

-'README.md'
-'run_analysis.R': main analysis that processes the original UCI HAR dataset and writes a clean version
-'tidyuciwearables.txt': cleaned dataset, output of 'run_analysis.R'

The main script 'run_analysis.R' combines the training and test data, extracts the mean and standard deviation measurements for each subject for each activity, labels the activities with descriptive names, changes the labels of the measurements to a more readable format, and writes the output file, 'tidyuciwearables.txt'.