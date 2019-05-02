
library(dplyr)



train_directory <- "C:\\Users\\Russell Snead\\Desktop\\Coursera Final Assignment\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train"

test_directory <- "C:\\Users\\Russell Snead\\Desktop\\Coursera Final Assignment\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test"

UCI_HAR_directory <- "C:\\Users\\Russell Snead\\Desktop\\Coursera Final Assignment\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset"



#gets activity labels and feature labels

setwd(UCI_HAR_directory)

activity_labels <- read.table("activity_labels.txt")

features <- read.table("features.txt")


#gets training data w/ user ID

setwd(train_directory)

subject_train <- read.table("subject_train.txt")

names(subject_train) <- "Subject"

x_train <- read.table("X_train.txt")

names(x_train) <- features[,2]

y_train <- read.table("y_train.txt")

names(y_train) <- "Activity"



#merges training data

training_set <- cbind(subject_train,y_train,x_train)



#gets test data w/ user ID

setwd(test_directory)

subject_test <- read.table("subject_test.txt")

names(subject_test) <- "Subject"

x_test <- read.table("X_test.txt")

names(x_test) <- features[,2]

y_test <- read.table("y_test.txt")

names(y_test) <- "Activity"



#merges test data

test_set <- cbind(subject_test, y_test,x_test)



#merges training and test

entire_set <- rbind(training_set,test_set)



#extracts only those fields in entire_set corresponding to a standard deviation or mean measurement



abridged_set <- cbind(entire_set[,1:2], entire_set[,grepl("mean\\()|std\\()", colnames(entire_set))])



#Changes activity labels to actual words



abridged_set$Activity <- sapply(abridged_set$Activity, function(x){activity_labels[which(activity_labels[,1]==x),2]})

#Part 2


summarized_set <- abridged_set %>% group_by(Subject,Activity) %>% summarise_all(function(x){mean(x)})

print (summarized_set)

write.table(summarized_set, "Average_Values.txt", row.name=FALSE)