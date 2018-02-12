Input data:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.


The script manipulates two basic datasets - X_test and X_train. These datasets contain signals from a motion sensor 
in a Samsung smartphone. The smartfone was warn by 30 individuals while performing several basic activities:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 
The signals were recorded within 2.56 sec time windows and a vector of feature variables was created for each time window.
The test subjects were randomly divided between a test group and a train group.

Detailed information about the feature variables are contained in features_info.txt and a complete list is contained in features.txt.

The basic datasets only contain the values. The labels of activities, subjects and feature values are available in 
separate files: subject_test/subject train for subjects, y_test/y_train for activities and feature_labels for the
feature values.

In the first step, the script loads all the above mentioned files and labels the basic datasets with subjects, activites and 
feature values. Subjects are labelled directly by joining the basic dataset with the subject_test/subject_train dataset. 
The y_test/y_train contain activity numbers only and they are therefore assigned their names contained in the file activity_labels 
and joined with the basic datasets afterwards. A character vector is created from the feature_labels file and used as the column names
of the basic sets. The values of the character vector are cleaned from non-standard symbols such as parentheses or dashes so as to prevent
R from truncating the character values thereby devaluating their descriptive ability.

Subsequently, only the columns containing mean or standard deviation varibles are selected (using a string filter) from both resulting
datasets and the datasets are merged together.

Finally, the merged dataset is grouped by subjects(1st level) and activities(2nd level) and an average is calculated for each group
and each feature value. The note "AVERAGE" is added to each feature value name to make the distinction.

Output file: cleanset.txt

List of output variables:

tBodyAccMag.mean._AVERAGE
tBodyAccMag.std._AVERAGE
tGravityAccMag.mean._AVERAGE
tGravityAccMag.std._AVERAGE
tBodyAccJerkMag.mean._AVERAGE
tBodyAccJerkMag.std._AVERAGE
tBodyGyroMag.mean._AVERAGE
tBodyGyroMag.std._AVERAGE
tBodyGyroJerkMag.mean._AVERAGE
tBodyGyroJerkMag.std._AVERAGE
fBodyAcc.mean.X_AVERAGE
fBodyAcc.mean.Y_AVERAGE
fBodyAcc.mean.Z_AVERAGE
fBodyAcc.std.X_AVERAGE
fBodyAcc.std.Y_AVERAGE
fBodyAcc.std.Z_AVERAGE
fBodyAcc.meanFreq.X_AVERAGE
fBodyAcc.meanFreq.Y_AVERAGE
fBodyAcc.meanFreq.Z_AVERAGE
fBodyAccJerk.mean.X_AVERAGE
fBodyAccJerk.mean.Y_AVERAGE
fBodyAccJerk.mean.Z_AVERAGE
fBodyAccJerk.std.X_AVERAGE
fBodyAccJerk.std.Y_AVERAGE
fBodyAccJerk.std.Z_AVERAGE
fBodyAccJerk.meanFreq.X_AVERAGE
fBodyAccJerk.meanFreq.Y_AVERAGE
fBodyAccJerk.meanFreq.Z_AVERAGE
fBodyGyro.mean.X_AVERAGE
fBodyGyro.mean.Y_AVERAGE
fBodyGyro.mean.Z_AVERAGE
fBodyGyro.std.X_AVERAGE
fBodyGyro.std.Y_AVERAGE
fBodyGyro.std.Z_AVERAGE
fBodyGyro.meanFreq.X_AVERAGE
fBodyGyro.meanFreq.Y_AVERAGE
fBodyGyro.meanFreq.Z_AVERAGE
fBodyAccMag.mean._AVERAGE
fBodyAccMag.std._AVERAGE
fBodyAccMag.meanFreq._AVERAGE
fBodyBodyAccJerkMag.mean._AVERAGE
fBodyBodyAccJerkMag.std._AVERAGE
fBodyBodyAccJerkMag.meanFreq._AVERAGE
fBodyBodyGyroMag.mean._AVERAGE
fBodyBodyGyroMag.std._AVERAGE
fBodyBodyGyroMag.meanFreq._AVERAGE
fBodyBodyGyroJerkMag.mean._AVERAGE
fBodyBodyGyroJerkMag.std._AVERAGE
fBodyBodyGyroJerkMag.meanFreq._AVERAGE
angle.tBodyAccMean.gravity._AVERAGE
angle.tBodyAccJerkMean..gravityMean._AVERAGE
angle.tBodyGyroMean.gravityMean._AVERAGE
angle.tBodyGyroJerkMean.gravityMean._AVERAGE
angle.X.gravityMean._AVERAGE
angle.Y.gravityMean._AVERAGE
angle.Z.gravityMean._AVERAGE


