run_analysis <- function(){
  library(dplyr)
  ## Load both train & test data
   x_train <- read.table("train/X_train.txt")   
   x_test <- read.table("test/X_test.txt")
  
   y_train <- read.table("train/y_train.txt")   
   y_test <- read.table("test/y_test.txt")
   
   subject_test <- read.table("test/subject_test.txt")
   subject_train <- read.table("train/subject_train.txt")
   
   features <- read.table("features.txt")
   activity <- read.table("activity_labels.txt")
   
   varName <- features [,2]
   varName <- paste0(varName)
  
   ## Replace varialble names witht the real names from features data set
   names(x_train) <- varName
   names(x_test) <- varName
   names(subject_test) <- names(subject_train) <- "subject"
   names(y_test) <- names(y_train) <- "activity"
        
   ## Get the list of only mean & std measurements, exclude meanFreq   
   mean_std_name <- varName[ grep("mean[^A-Z]|std", varName )  ]
   
   ## Get mean & std measurements for train data
   train <- x_train[, mean_std_name]
   train <- cbind(subject_train, y_train, train )
   
   ## Get mean & std measurements for test data
   test <- x_test[, mean_std_name]
   test <- cbind(subject_test, y_test, test )
   
   ##Merge the training & test data set
   merge_data <- rbind (train, test)
   
   ## Use descriptive activity names to name the activities in the data set
   merge_data$activity <- factor(merge_data$activity, levels=activity$V1,labels=activity$V2 )
   
   mean_std_name <- names(merge_data)
   
   ## Replace special char from variable names   
   
   mean_std_name <- gsub( "[(][)]" , "" , mean_std_name )
  
   ## Appropriately labels the data set with descriptive variable names. 
   for (col in 1:length (mean_std_name))
   {  
      colName <- mean_std_name[col]
      if (length(grep("-mean",  colName) ) > 0) {
        mean_std_name[col] <- paste0("MEAN - ", gsub( "-mean" , "" , colName  ))
      }
      else if (length(grep("-std",  colName) ) > 0) {
        mean_std_name[col] <- paste0("STD - ", gsub( "-std" , "" , colName  ))
      }
   }  
   
   names(merge_data) <- mean_std_name

   ## From the merged data set, create an independent tidy data set with the average of each variable for each activity and each subject.
   mean_summary <- merge_data %>% group_by(subject, activity) %>% summarise_each(funs(mean))
   dim(mean_summary)
  
   ## Write the result into Result.txt
   write.table(mean_summary, "Result.txt", row.name=FALSE)
##   merge_data
}