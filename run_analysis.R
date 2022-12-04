# load data
testSubject <- read.delim("./UCI HAR Dataset/test/subject_test.txt",sep=" ",header=FALSE)
testX <- read.delim('./UCI HAR Dataset/test/X_test.txt',sep="",header=FALSE)
testY <-read.delim('./UCI HAR Dataset/test/y_test.txt',sep=" ",header=FALSE)
trainSubject <- read.delim("./UCI HAR Dataset/train/subject_train.txt",sep=" ",header=FALSE)
trainX <- read.delim("./UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE)
trainY <- read.delim("./UCI HAR Dataset/train/y_train.txt",sep=" ",header=FALSE)
features <- read.delim("./UCI HAR Dataset/features.txt",header=FALSE,sep=" ")
activityLabels <- read.delim("./UCI HAR Dataset/activity_labels.txt",header=FALSE,sep=" ")

# transform activity labels
activityLabels[,2] <- tolower(sub("_","",activityLabels[,2]))

# transform feature names
features[,2] <- gsub("-","",features[,2])
features[,2] <- gsub(",","",features[,2])
features[,2] <- tolower(gsub("[()]","",features[,2]))

# change column names
names(testX) <- features[,2]
names(trainX) <- features[,2]

# find columns that contain a mean or std
stdCols <- grep("std",features[,2],ignore.case=TRUE)
meanCols <- integer(length(stdCols))
for (ii in 1:length(stdCols)){
  stdColName <- features[stdCols[ii],2]
  meanColName <- sub("std","mean",stdColName)
  meanColNum <- which(features[,2]==meanColName)
  meanCols[ii] <- meanColNum
}
allCols <- sort(c(meanCols,stdCols))

# extract columns with a mean or std measurement
testX <- testX[,allCols]
trainX <- trainX[,allCols]

library(dplyr)
testX <- mutate(testX,'subject'=testSubject$V1)
trainX <- mutate(trainX, 'subject'=trainSubject$V1)

testX <- mutate(testX,'activity'=testY)
trainX <- mutate(trainX,'activity'=trainY)
