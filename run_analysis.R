# Load required libraries
library(dplyr)
library(tidyr)

# Set the working directory to your dataset root path
setwd("C:/Users/tblo/OneDrive - Gemeente 's-Hertogenbosch/R-kopieën/UCI HAR Dataset")

# 1. Merge the training and test sets to create one data set

# Read the training data
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

# Read the test data
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Merge the training and test data
X_data <- rbind(X_train, X_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# 2. Extract only the measurements on the mean and standard deviation for each measurement

# Read the features and extract the mean and std columns
features <- read.table("features.txt")
mean_std_features <- grep("mean\\(\\)|std\\(\\)", features$V2)

# Subset the data to include only mean and std features
X_data <- X_data[, mean_std_features]

# 3. Use descriptive activity names to name the activities in the data set

# Read the activity labels
activity_labels <- read.table("activity_labels.txt")

# Replace activity numbers with descriptive names
y_data$V1 <- factor(y_data$V1, levels = activity_labels$V1, labels = activity_labels$V2)

# 4. Appropriately label the data set with descriptive variable names

# Get the feature names for the selected columns
feature_names <- features$V2[mean_std_features]

# Clean up the feature names
feature_names <- gsub("[()]", "", feature_names)
feature_names <- gsub("-", "_", feature_names)

# Assign column names to the data
colnames(X_data) <- feature_names
colnames(y_data) <- "activity"
colnames(subject_data) <- "subject"

# Combine all the data into one dataset
final_data <- cbind(subject_data, y_data, X_data)

# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject

# Calculate the average of each variable for each activity and subject
tidy_data <- final_data %>%
  group_by(subject, activity) %>%
  summarise_all(list(mean = ~mean(.)))

# Write the tidy data set to a file
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)

# Optional: Save the tidy dataset as an RData file
save(tidy_data, file = "tidy_data.RData")

# End of script
