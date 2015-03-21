#CodeBook for the tidy dataset#
##Data source##

This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The goal of the project is to create a tidy dataset:
1. each variable should be in one column
2. each observation of that variable should be in a diferent row
3. include ids to link tables together

Step1: The source files features.txt and activity_features.txt is loaded with separators in a table format
Step2:Test data is loaded in a table format. read.table, paste function is used for the same. Columns are concatenated from subject.test file, x and y files.
Step3: Training data is loaded in a table format. Columns are concatenated from subject.test file, x and y files.
Step 4: Test and training data are merged while extracting the mean and std deviation for each measurement
Step5: Descriptive names are used for each activity 
Step6: A second, independent tidy data set with the average of each variable for each activity and each subject.
A tidy data set is created and also a tidy.mean dataset is created.



