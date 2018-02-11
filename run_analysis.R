clean <- function() {
  
  library(dplyr)
  
  setwd("~/Coursera/CleaningDataAssignment/UCI HAR Dataset")
  
  #loading and cleaning activity and feature labels:
  activity_labels <- tbl_df(read.table("activity_labels.txt", col.names = c("id", "activity")))
  feature_labels <- read.table("features.txt", col.names = c("id", "name"))
  feature_labels <- as.character(feature_labels$name)
  feature_labels <- gsub("\\()-", ".", feature_labels)
  feature_labels <- gsub("\\()", ".", feature_labels)
  feature_labels <- gsub("-|\\,|\\(|\\)", ".", feature_labels)
  
  #loading test and train datasets (mean and std variables filtered immediately) 
  # + identifiers of subjects and activities
  setwd("./test")
  
  test_subjects <- tbl_df(read.table("subject_test.txt", col.names = "subject"))
  test_activity_number <- tbl_df(read.table("y_test.txt", col.names = "activity_number"))
  
  test_dataset <- tbl_df(read.table("X_test.txt", col.names = feature_labels)) %>% select(matches("mean|std"))
  
  setwd("../")
  setwd("./train")
  
  train_subjects <- tbl_df(read.table("subject_train.txt", col.names = "subject"))
  train_activity_number <- tbl_df(read.table("y_train.txt", col.names = "activity_number"))

  train_dataset <- tbl_df(read.table("X_train.txt", col.names = feature_labels)) %>% select(matches("mean|std"))
  
  setwd("../")
  
  #creating a table of verbal activity description
  activities_test <- inner_join(test_activity_number, activity_labels, by = c("activity_number" = "id")) %>% select(activity)
  activities_train <- inner_join(train_activity_number, activity_labels, by = c("activity_number" = "id")) %>% select(activity)
  
  #assigning subject numbers and verbal activity description to train and test datasets
  test_table <- bind_cols(test_subjects, activities_test, test_dataset)
  train_table <- bind_cols(train_subjects, activities_train, train_dataset)
  
  #merging test and train datasets
  final_table <- bind_rows(test_table, train_table)
  
  #creating a new dataset that consists of average values for each subject and activity
  new_set <- final_table %>% group_by(subject, activity) %>% summarise_all(mean)
  
  colnames(new_set)[-c(1, 2)] <- paste(names(new_set)[-c(1, 2)], "AVERAGE", sep = "_")
  
  write.table(new_set, "cleanset.txt")
 
}
