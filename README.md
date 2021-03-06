# CleaningData
The scrtipt run_analysis.R creates an intermediary dataset from motion recognition data availbale at https://github.com/Sal2040/CleaningData and subsequently creates another dataset that only provides average values.

The majority of data manipulation is done using the dplyr package.

The script manipulates two basic datasets - X_test and X_train. These datasets contain signals from a motion sensor in a Samsung smartphone. The smartfone was warn by 30 individuals while performing several basic activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. The signals were recorded within 2.56 sec time windows and a vector of feature variables was created for each time window. The test subjects were randomly divided between a test group and a train group.

Detailed information about the feature variables are contained in features_info.txt and a complete list is contained in features.txt.

The basic datasets only contain the values. The labels of activities, subjects and feature values are available in separate files: subject_test/subject train for subjects, y_test/y_train for activities and feature_labels for the feature values.

In the first step, the script loads all the above mentioned files and labels the basic datasets with subjects, activites and feature values. Subjects are labelled directly by joining the basic dataset with the subject_test/subject_train dataset. The y_test/y_train contain activity numbers only and they are therefore assigned their names contained in the file activity_labels and joined with the basic datasets afterwards. A character vector is created from the feature_labels file and used as the column names of the basic sets. The values of the character vector are cleaned from non-standard symbols such as parentheses or dashes so as to prevent R from truncating the character values thereby devaluating their descriptive ability.

Subsequently, only the columns containing mean or standard deviation varibles are selected (using a string filter) from both resulting datasets and the datasets are merged together.

Finally, the merged dataset is grouped by subjects(1st level) and activities(2nd level) and an average is calculated for each group and each feature value. The note "AVERAGE" is added to each feature value name to make the distinction.

Output file: cleanset.txt


The final dataset is exported into the file cleanset.txt.
