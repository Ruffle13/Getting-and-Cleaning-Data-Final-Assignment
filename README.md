# Getting-and-Cleaning-Data-Final-Assignment
Repository for the final assignment of Coursera- Getting and Cleaning Data course

Part 1:

The script first reads the activity labels and features (as data frames) from their respective .txt files.

It then reads subject_train.txt, x_train.txt, and y_train.txt files, gives the columns descriptive titles (I assumed the features list names were descriptive for column names of x_train), and merges the three data frames with the cbind function.

After repeating the above procedure for the test files, the combined training and test data frames are merged with the rbind function to make a single data frame with all the information included (entire_set).

The frame “abridged_set” is then created by binding the first two columns (“Subject” and “Activity”) to those columns in entire_set who contain “mean()” or “std()” as their header.

Finally, the “Activity” column in abridged_set has its activity identification number replaced with the actual names of the activities through use of sapply.

Part 2:

The information in abridged_set is grouped by both “Subject” and “Activity” and summarized by mean to create the final tidy data frame, summarized_set.
