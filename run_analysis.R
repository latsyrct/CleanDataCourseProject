#define variable
file <- "data.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_path <- "UCI HAR Dataset"
result_folder <- "result"

# Install required packacets  
# looks if package is installed

if(!is.element("plyr", installed.packages()[,1])){
  print("Installing packages")
  install.packages("plyr")
}

library(plyr)

#check for downloaded data
if(!file.exists(file)){
  #Downloads the data file
  print("downloading Data")
  download.file(url,file, mode = "wb")
}

#check for result folder, if does not exist, create the directory
if(!file.exists(result_folder)){
  dir.create(result_folder)
} 

#reads a table from the zip data file and applies cols
getTable <- function (filename,cols = NULL){
  
  print(paste("Reading table:", filename))
  
  f <- unz(file, paste(data_path,filename,sep="/"))
  
  data <- data.frame()
  
  if(is.null(cols)){
    data <- read.table(f,sep="",stringsAsFactors=F)
  } else {
    data <- read.table(f,sep="",stringsAsFactors=F, col.names= cols)
  }
  
  
  data
  
}

#Reads and creates a complete data set
getData <- function(type, features){
  
  print(paste("Reading data", type))
  
  subject_data <- getTable(paste(type,"/","subject_",type,".txt",sep=""),"id")
  y_data <- getTable(paste(type,"/","y_",type,".txt",sep=""),"activity")    
  x_data <- getTable(paste(type,"/","X_",type,".txt",sep=""),features$V2) 
  
  return (cbind(subject_data,y_data,x_data)) 
}

#saves the data into the result folder
saveResult <- function (data,name){
  
  print(paste("Saving data", name))
  
  file <- paste(result_folder, "/", name,".txt" ,sep="")
  write.table(data,file)
}



#get common data tables

#features used for col names when creating train and test data sets
features <- getTable("features.txt")

# Load the data sets
train <- getData("train",features)
test <- getData("test",features)

# 1. Merges the training and the test sets to create one data set. 
data <- rbind(train, test)

# rearrange the data using id
data <- arrange(data, id)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
MergeData <- data[,c(1,2,grep("std", colnames(data)), grep("mean", colnames(data)))]

# 3. Uses descriptive activity names to name the activities in the data set 
activity_labels <- getTable("activity_labels.txt")

# 4. Appropriately labels the data set with descriptive activity names.  
data$activity <- factor(data$activity, levels=activity_labels$V1, labels=activity_labels$V2)

# save merged data into results folder
saveResult(MergeData,"merged")

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
meanData <- ddply(MergeData, .(id, activity), .fun=function(x){ colMeans(x[,-c(1:2)]) })

# Adds "_mean" to colnames
colnames(meanData)[-c(1:2)] <- paste(colnames(meanData)[-c(1:2)], "_mean", sep="")

# Save tidy mean Data into results folder
saveResult(meanData,"average")
