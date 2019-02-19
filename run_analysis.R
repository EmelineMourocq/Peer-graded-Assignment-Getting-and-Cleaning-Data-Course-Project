# script Peer-graded assignment Week4 Cleaning data Coursera course by Emeline Mourocq

# INSTRUCTIONS ####
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.



# set directory
getwd()
setwd("C:/Users/EmelineMourocq/Documents/Giving Life to Data Project/COURS/Coursera-Data Science Specialization/Cours 3 - Getting and Cleaning Data/Week 4/Peer-graded assignment week4")

# 1. Merges the training and the test sets to create one data set. ####
        # Download file that containes columns names for test and train dataset
DataColNames<-read.table("./UCI HAR Dataset/features.txt",sep=" ",header=F,fill=T)
str(DataColNames)
        
        # Get the test data together
                # Download the file containing the values for test (X_test file)
DataTest<-read.table("./UCI HAR Dataset/test/X_test.txt")
str(DataTest)
                # Asign names to the columns
colnames(DataTest)<-DataColNames$V2
str(DataTest)
                # Asigne rows identifications
DataTestSubject<-read.table("./UCI HAR Dataset/test/subject_test.txt")
str(DataTestSubject)
DataTestY<-read.table("./UCI HAR Dataset/test/y_test.txt")
str(DataTestY)
DataTest<-cbind(SubjectID=DataTestSubject$V1,ActivityID=DataTestY$V1,DataTest)
str(DataTest)

        # Get the train data together
                # Download the file containing the values for train (X_train file)
DataTrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
str(DataTrain)
                # Asign names to the columns
colnames(DataTrain)<-DataColNames$V2
str(DataTrain)     
                # Asigne rows identifications
DataTrainSubject<-read.table("./UCI HAR Dataset/train/subject_train.txt")
str(DataTrainSubject)
DataTrainY<-read.table("./UCI HAR Dataset/train/y_train.txt")
str(DataTrainY)
DataTrain<-cbind(SubjectID=DataTrainSubject$V1,ActivityID=DataTrainY$V1,DataTrain)
str(DataTrain)

# Merge test and train datasets
MergedData<-rbind(DataTrain,DataTest)
str(MergedData)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. ####
        # select only the columns containing mean() in the colunm names
MeanSubset<-subset(MergedData,select=grep("mean()",colnames(MergedData)),value=T)
str(MeanSubset)
        # select only the columns containing std() in the colunm names
StdSubset<-subset(MergedData,select=grep("std()",colnames(MergedData)))
str(StdSubset)
        # merge the two subset obtained above with the SubjectID and ActivityID
SubsetedData<-cbind(SubjectID=MergedData$SubjectID,ActivityID=MergedData$ActivityID,MeanSubset,StdSubset)
str(SubsetedData)


# 3. Uses descriptive activity names to name the activities in the data set ####
        # download file with names of the activities
ActivityName<-read.table("./UCI HAR Dataset/activity_labels.txt")
str(ActivityName)
        # rename the colunm of the ActivityName dataframe so that the name of
        # the column with the activity number are the same in the ActivityNames 
        # and the SubsetedData dataframes
colnames(ActivityName)<-c("ActivityID","ActivityName")
        # merge the two dataframes by the commun column (activitie's number)
SubsetedData2 <- merge(ActivityName,SubsetedData,  by='ActivityID', all.x=TRUE)
summary(SubsetedData2) 

# 4. Appropriately labels the data set with descriptive variable names. ####
        # make all variable names lowercase only
colnames(SubsetedData2)<-tolower(colnames(SubsetedData2))
str(SubsetedData2)

# 5. From the data set in step 4, creates a second, independent tidy data set ####
# with the average of each variable for each activity and each subject. =T)
library(dplyr)
SubsetedData2 %>%
        group_by(paste(SubsetedData2$activityname,SubsetedData2$subjectid)) %>%
        summarize_at(vars(4:82),funs(mean))
        
