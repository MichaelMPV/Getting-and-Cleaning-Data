library(data.table)
fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./FILE.zip')){
  download.file(fileurl,'./FILE.zip', mode = 'wb')
  unzip("FILE.zip", exdir = getwd())
}


read_features <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = ' ')
read_features <- as.character(read_features[,2])

read_x_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
read_activity <- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE, sep = ' ')
read_subject <- read.csv('./UCI HAR Dataset/train/subject_train.txt',header = FALSE, sep = ' ')

dataframe_train <-  data.frame(read_subject,read_activity,read_x_train)
names(dataframe_train) <- c(c('subject', 'activity'), read_features)

read_x_test <- read.table('./UCI HAR Dataset/test/X_test.txt')
read_y_test <- read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE, sep = ' ')
read_subject_test <- read.csv('./UCI HAR Dataset/test/subject_test.txt', header = FALSE, sep = ' ')

dataframe_test <-  data.frame(read_subject_test,read_y_test,read_x_test)
names(dataframe_test) <- c(c('subject', 'activity'), read_features)



#1
data_complete <- rbind(dataframe_train,dataframe_test)
#2
mean_std <- grep('mean|std', read_features)
sub  <- data_complete[,c(1,2,mean_std + 2)]


#3
read_activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
read_activity_labels <- as.character(read_activity_labels[,2])
sub $activity <- read_activity_labels[sub $activity]


#4


names_data <- names(sub )
names_data <- gsub("[(][)]", "", names_data)
names_data <- gsub("^t", "TimeDomain_", names_data)
names_data <- gsub("^f", "FrequencyDomain_", names_data)
names_data <- gsub("Acc", "Accelerometer", names_data)
names_data <- gsub("Gyro", "Gyroscope", names_data)
names_data <- gsub("Mag", "Magnitude", names_data)
names_data <- gsub("-mean-", "_Mean_", names_data)
names_data <- gsub("-std-", "_StandardDeviation_", names_data)
names_data <- gsub("-", "_", names_data)
names(sub ) <- names_data



#5

tidy <- aggregate(sub [,3:81], by = list(activity = sub $activity, subject = sub $subject),FUN = mean)
write.table(x = tidy, file = "data_convert_tidy.txt", row.names = FALSE)
