CodeBook Course Project getdata-016
===================================

The script run_analysis.R performs the following actions on the raw data set to arrive at result.txt:

* Load only columns with the measurements of means and standard deviations for training and test data.
* Merge all rows of training and test data for features (data_x) and subjects (data_y).
* Loads the feature labels and corrects them by deleting underscores and parenthesis, prefixing with "Time" and "Frequency" and camel casing. 
* Sets the corrected feature labels on the data (data_x).
* Set column label for activities (data_y) to "activitiy_nr". 
* Merges the columns for subjects, data_y and data_x into one table.
* Reads the activity mapping and merges the activity labels by the activitnr to the table.
* Deletes activitynr.
* Groups the table by subject and activity and calculates the mean of the feature columns.
* Outputs result.txt with the date in the following format:

subject            -> subject nr (1-30)
activity           -> activities carried out by subjects (LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS)

The rest of the columns are the means of the feature variables from raw data grouped by subject and activity:
-------------------------------------------------------------------------------------------------------------

TimeBodyAccMeanX
TimeBodyAccMeanY
TimeBodyAccMeanZ
TimeBodyAccStdX
TimeBodyAccStdY
TimeBodyAccStdZ
TimeGravityAccMeanX
TimeGravityAccMeanY
TimeGravityAccMeanZ
TimeGravityAccStdX
TimeGravityAccStdY
TimeGravityAccStdZ
TimeBodyAccJerkMeanX
TimeBodyAccJerkMeanY
TimeBodyAccJerkMeanZ
TimeBodyAccJerkStdX
TimeBodyAccJerkStdY
TimeBodyAccJerkStdZ
TimeBodyGyroMeanX
TimeBodyGyroMeanY
TimeBodyGyroMeanZ
TimeBodyGyroStdX
TimeBodyGyroStdY
TimeBodyGyroStdZ
TimeBodyGyroJerkMeanX
TimeBodyGyroJerkMeanY
TimeBodyGyroJerkMeanZ
TimeBodyGyroJerkStdX
TimeBodyGyroJerkStdY
TimeBodyGyroJerkStdZ
TimeBodyAccMagMean
TimeBodyAccMagStd
TimeGravityAccMagMean
TimeGravityAccMagStd
TimeBodyAccJerkMagMean
TimeBodyAccJerkMagStd
TimeBodyGyroMagMean
TimeBodyGyroMagStd
TimeBodyGyroJerkMagMean
TimeBodyGyroJerkMagStd
FrequencyBodyAccMeanX
FrequencyBodyAccMeanY
FrequencyBodyAccMeanZ
FrequencyBodyAccStdX
FrequencyBodyAccStdY
FrequencyBodyAccStdZ
FrequencyBodyAccJerkMeanX
FrequencyBodyAccJerkMeanY
FrequencyBodyAccJerkMeanZ
FrequencyBodyAccJerkStdX
FrequencyBodyAccJerkStdY
FrequencyBodyAccJerkStdZ
FrequencyBodyGyroMeanX
FrequencyBodyGyroMeanY
FrequencyBodyGyroMeanZ
FrequencyBodyGyroStdX
FrequencyBodyGyroStdY
FrequencyBodyGyroStdZ
FrequencyBodyAccMagMean
FrequencyBodyAccMagStd
FrequencyBodyAccJerkMagMean
FrequencyBodyAccJerkMagStd
FrequencyBodyGyroMagMean
FrequencyBodyGyroMagStd
FrequencyBodyGyroJerkMagMean
FrequencyBodyGyroJerkMagStd"
