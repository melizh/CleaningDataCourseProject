# This script loads the UCI HAR Dataset, combines the training and test sets,
# and writes a combined tidy dataset as output.

# load data
testSubject <- read.delim("./UCI HAR Dataset/test/subject_test.txt",sep=" ",header=FALSE)
testX <- read.delim('./UCI HAR Dataset/test/X_test.txt',sep="",header=FALSE)
testY <-read.delim('./UCI HAR Dataset/test/y_test.txt',sep=" ",header=FALSE)
trainSubject <- read.delim("./UCI HAR Dataset/train/subject_train.txt",sep=" ",header=FALSE)
trainX <- read.delim("./UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE)
trainY <- read.delim("./UCI HAR Dataset/train/y_train.txt",sep=" ",header=FALSE)
features <- read.delim("./UCI HAR Dataset/features.txt",header=FALSE,sep=" ")
activityLabels <- read.delim("./UCI HAR Dataset/activity_labels.txt",header=FALSE,sep=" ")

# combine training and test data
x <- rbind(testX,trainX)
y <- rbind(testY,trainY)
s <- rbind(testSubject,trainSubject)

# transform activity labels
activityLabels[,2] <- tolower(sub("_","",activityLabels[,2]))

# transform feature names
features[,2] <- gsub("-","",features[,2])
features[,2] <- gsub(",","",features[,2])
features[,2] <- tolower(gsub("[()]","",features[,2]))

# change column names
names(x) <- features[,2]

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
x <- x[,allCols]

# add activity and subject labels
library(dplyr)
x <- mutate(x,'subject'=s$V1)
x <- mutate(x,'activity'=y$V1)

# change activity from numbers to descriptive names
for (ii in 1:nrow(x)){
  actNum = x$activity[ii]
  actName = activityLabels[activityLabels[,1]==actNum,2]
  x$activity[ii] = actName
}

# reorder columns
colOrder = c(ncol(x)-1,ncol(x),1:(ncol(x)-2))
x <- x[,colOrder]

# write tidy data set
write.table(x,file="tidyuciwearables.txt",sep=" ",row.name=FALSE)
