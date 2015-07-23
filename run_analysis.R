# Read in data files
xtest <- read.csv("UCI HAR Dataset//test//X_test.txt", sep = "", header = FALSE)
xtrain <- read.csv("UCI HAR Dataset//train//X_train.txt", sep = "", header = FALSE)
ytest <- read.csv("UCI HAR Dataset//test//y_test.txt", sep = "", header = FALSE)
ytrain <- read.csv("UCI HAR Dataset//train//y_train.txt", sep = "", header = FALSE)
subject_test <- read.csv("UCI HAR Dataset//test//subject_test.txt", sep = "", header = FALSE)
subject_train <- read.csv("UCI HAR Dataset//train//subject_train.txt", sep = "", header = FALSE)

activities <- read.csv("UCI HAR Dataset//activity_labels.txt", sep = "", header=FALSE)
names(activities) <- c("num", "activity")

#Read in col labels file
names<- read.csv("UCI HAR Dataset//features.txt", sep = "", header= FALSE)
#Add to data frames
names(xtest) <-as.vector(names[,2])
names(xtrain) <- as.vector(names[,2])
names(ytest) <- "Activity"
names(ytrain) <- "Activity"
names(subject_test) <- "Subject"
names(subject_train) <- "Subject"

#Bind addtional activity and subject columns
xytest <- cbind(ytest, xtest)
fulltest <- cbind(subject_test, xytest)
xytrain <- cbind(ytrain, xtrain)
fulltrain <- cbind(subject_train, xytrain)
#Bind test and train rows into one
all <- rbind(fulltest,fulltrain)

#Extract only Subject, Activity, mean and sd variables
meanAndStd <- all[,grep("Subject|Activity|*[M|m]ean*|*std*", names(all), value = TRUE)]

#Change the activity variable to meaningful names
for (i in 1:max(meanAndStd$Activity)){
  meanAndStd[meanAndStd$Activity == i, "Activity"] <- as.character(activities[activities$num == i,2])
} 

#Calculate mean of each variable grouped by activity for each subject
for (i in 1:max(meanAndStd$Subject)) {
  res<- aggregate(meanAndStd[meanAndStd$Subject==i,], by=list(meanAndStd[meanAndStd$Subject==i, c("Activity")]), "mean")
  if (i == 1) {
    tidySet <- res
  } else {
    #Append results
    tidySet <- rbind(tidySet, res)
  }
}
#Remove defunct Activity column
tidySet$Activity <- NULL
#Rename first column
n <- names(tidySet)
names(tidySet) <- c("Activity", n[2:length(n)])

#Done - save results
write.table(tidySet,file = "tidyDataSet.txt", row.names = FALSE)
