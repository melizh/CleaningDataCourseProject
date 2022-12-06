# Code Book for Coursera Getting and Cleaning Data Course Project

This file describes the data, steps taken to clean the data, and variables contained in the file 'tidyuciwearables.txt'

The data in the text file 'tidyuciwearables.txt' was extracted from the UCI Human Activity Recognition using Smartphones (HAR) dataset.  It contains mean and standard deviations for each of the 6 activities measured in the HAR dataset (walking, walking upstairs, walking downstairs, sitting, standing, and laying) for both the training and test sets.  

The data was cleaned by importing both the test and training sets ('test_X.txt', 'train_X.txt', 'test_Y.txt', and 'train_Y.txt') and combining them into a single dataset.  All activity labels were converted from numbers to their corresponding text labels using 'activity_labels.txt'.  Subject numbers were added to the dataset according to the 'subject_test.txt' and 'subject_train.txt' files.  Measurement names were added to the dataset according to the 'features.txt' file.  The resulting dataframe was then printed to the file 'tidyuciwearables.txt'.  All feature and variable names were stripped of special characters and converted to lowercase only letters.  

The dataset contains the following variables:

subject: the subject number of the person the measurement was taken on

activity: the activity the person was performing

tbodyaccmeanx: Time domain mean body acceleration signal for the x-axis.  tbodyaccmeany and tbodyaccmeanz are the same measurements for the y and z axes, respectively.  

tbodyaccstdx: Standard deviation of time domain body acceleration signal for the x-axis.  tbodyaccstdy and tbodyaccstdz are the same measurements for the y and z axes, respectively.  

tgravityaccmeanx: Time domain mean gravity acceleration signal for the x-axis.  tgravityaccmeany and tgravityaccmeanz are the same measurements for the y and z axes, respectively.  

tgravitystdmeanx: Standard deviation of time domain gravity acceleration signal for the x-axis.  tgravityaccstdy and tgravityaccstdz are the same measurements for the y and z axes, respectively.  

tbodyaccjerkmeanx: Time domain mean body jerk for the x-axis.  tbodyaccjerkmeany and tbodyaccjerkmeanz are the same measurements for the y and z axes, respectively.  

tbodyaccjerkstdx: Standard deviation of time domain body jerk for the x-axis.  tbodyaccjerkstdy and tbodyaccjerkstdz are the same measurements for the y and z axes, respectively.  

tbodygyromeanx: Time domain mean gyroscope measurement for the x-axis.  tbodygyromeany and tbodygyromeanz are the same measurements for the y and z axes, respectively.  

tbodygyrostdx: Standard deviation of time domain gyroscope measurement for the x-axis.  tbodygyrostdy and tbodygyrostdz are the same measurements for the y and z axes, respectively.  

tbodygyrojerkmeanx: Time domain mean gyroscope jerk measurement for the x-axis.  tbodygyrojerkmeany and tbodygyrojerkmeanz are the same measurements for the y and z axes, respectively.  

tbodygyrojerkstdx: Standard deviation of time domain gyroscope jerk measurement for the x-axis.  tbodygyrojerkstdy and tbodygyrojerkstdz are the same measurements for the y and z axes, respectively.  

tbodyaccmagmean: Mean magnitude of time domain body acceleration signal.

tbodyaccmagstd: Standard deviation of magnitude of time domain body acceleration signal.  

tgravityaccmagmean: Mean magnitude of time domain gravity acceleration signal.  

tgravityaccmagstd: Standard deviation of magnitude of time domain gravity acceleration signal.  

tbodyaccjerkmagmean: Mean magnitude of time domain body acceleration jerk signal.  

tbodyaccjerkmagstd: Standard deviation of magnitude of time domain body acceleration jerk signal.  

tbodygyromagmean: Mean magnitude of time domain body gyroscope measurements.  

tbodygyromagstd: Standard deviation of magnitude of time domain body gyroscope measurements.  

tbodygyrojerkmagmean: Mean magnitude of time domain body gyroscope jerk measurements.  

tbodygyrojerkmagstd: Standard deviation of magnitude of time domain body gyroscope jerk measurements.  

fbodyaccmeanx: Mean frequency domain body acceleration in the x-axis.  fbodyaccmeany and fbodyaccmeanz are the same measurements for the y and z axes, respectively.  

fbodyaccstdx: Standard deviation of mean frequency domain body acceleration in the x-axis.  fbodyaccstdy and fbodyaccstdz are the same measurements for the y and z axes, respectively.    

fbodyaccjerkmeanx: Mean frequency domain body acceleration jerk in the x-axis.  fbodyaccjerkmeany are fbodyaccjerkmeanz are the same measurements for the y and z axes, respectively.

fbodyaccjerkstdx: Standard deviation of frequency domain body acceleration jerk in the x-axis.  fbodyaccjerkstdy and fbodyaccjerkstdz are the same measurements for the y and z axes, respectively.

fbodygyromeanx: Mean frequency domain body gyroscope measurement in the x-axis.  fbodygyromeany and fbodygyromeanz are the same measurements for the y and z axes, respectively.

fbodygyrostdx: Standard deviation of frequency domain body gyroscope measurement in the x-axis.  fbodygyrostdy and fbodygyrostdz are the same measurements for the y and z axes, respectively.

fbodyaccmagmean: Mean frequency domain body acceleration magnitude.  

fbodyaccmagstd: Standard deviation of frequency domain body acceleration magnitude.  

fbodybodyaccjerkmagmean: Mean frequency domain body acceleration jerk magnitude.  

fbodybodyaccjerkmagstd: Standard deviation of frequency domain body acceleration jerk magnitude.  

fbodybodygyromagmean: Mean frequency domain body gyroscope measurement magnitude.  

fbodybodygyromagstd: Standard deviation of frequency domain body gyroscope measurement magnitude.  

fbodybodygyrojerkmagmean: Mean frequency domain body gyroscope measurement jerk magnitude.  

fbodybodygyrojerkmagstd: Standard deviation of frequency domain body gyroscope measurement jerk magnitude.  