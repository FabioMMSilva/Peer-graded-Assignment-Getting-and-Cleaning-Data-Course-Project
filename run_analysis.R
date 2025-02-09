

# Load necessary libraries
library(dplyr)

# Define the data directory
data_dir <- "UCI HAR Dataset"

# Load feature names and activity labels
features <- read.table(file.path(data_dir, "features.txt"), col.names = c("index", "feature_name"))
activity_labels <- read.table(file.path(data_dir, "activity_labels.txt"), col.names = c("activity_id", "activity_name"))

# Load training data
subject_train <- read.table(file.path(data_dir, "train", "subject_train.txt"), col.names = "subject")
x_train <- read.table(file.path(data_dir, "train", "X_train.txt"))
y_train <- read.table(file.path(data_dir, "train", "y_train.txt"), col.names = "activity_id")

# Load test data
subject_test <- read.table(file.path(data_dir, "test", "subject_test.txt"), col.names = "subject")
x_test <- read.table(file.path(data_dir, "test", "X_test.txt"))
y_test <- read.table(file.path(data_dir, "test", "y_test.txt"), col.names = "activity_id")

# Merge training and test data
subject_data <- rbind(subject_train, subject_test)
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)

# Assign column names to x_data
colnames(x_data) <- features$feature_name

# Combine all data into one dataset
merged_data <- cbind(subject_data, y_data, x_data)

# Extract only measurements on the mean and standard deviation
selected_columns <- grepl("mean\(\)|std\(\)", features$feature_name)
filtered_data <- merged_data[, c(TRUE, TRUE, selected_columns)]

# Merge activity names
filtered_data <- merge(filtered_data, activity_labels, by.x = "activity_id", by.y = "activity_id")

# Reorder columns and rename activity column
filtered_data <- filtered_data[, c(2, ncol(filtered_data), 3:(ncol(filtered_data)-1))]
colnames(filtered_data)[2] <- "activity"

# Save the cleaned dataset
write.table(filtered_data, "tidy_data.txt", row.name = FALSE, sep = "\t")

