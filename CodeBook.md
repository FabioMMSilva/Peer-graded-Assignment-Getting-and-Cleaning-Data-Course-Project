# Code Book - Getting and Cleaning Data Project

This Code Book describes the variables, transformations, and structure of the **tidy_data.txt** file produced in this project.

## 📄 **Dataset Overview**
The dataset originates from the **UCI HAR Dataset**, which contains motion sensor data collected from 30 subjects performing various activities while wearing a smartphone. The dataset has been processed to extract relevant measurements and organize it into a tidy format.

## 🛠 **Processing Steps**

1. The **training** and **test** datasets were merged into one.
2. Only **mean()** and **std()** measurements were extracted.
3. Activity labels were replaced with **descriptive names** instead of numeric values.
4. Variable names were appropriately **labeled** to be more understandable.
5. The final dataset contains the **average** of each variable for each activity and each subject.

## 📊 **Dataset Structure**

The tidy dataset **tidy_data.txt** contains **180 rows** and **68 columns**.

- **Rows**: Each row represents an average measurement for a **subject-activity** combination.
- **Columns**:
  - **subject** (integer): The ID of the subject (ranges from 1 to 30).
  - **activity** (string): The descriptive name of the activity performed.
  - **66 measurement variables**: Sensor signals extracted from accelerometer and gyroscope readings, including means and standard deviations.

## 📌 **Activity Labels**
The dataset contains the following activity labels:

- `WALKING`
- `WALKING_UPSTAIRS`
- `WALKING_DOWNSTAIRS`
- `SITTING`
- `STANDING`
- `LAYING`

## 📈 **Measurement Variables**

The following variables are included in the dataset:

- `tBodyAcc-mean()-X`, `tBodyAcc-mean()-Y`, `tBodyAcc-mean()-Z`: Mean of body acceleration (X, Y, Z).
- `tBodyAcc-std()-X`, `tBodyAcc-std()-Y`, `tBodyAcc-std()-Z`: Standard deviation of body acceleration (X, Y, Z).
- `tGravityAcc-mean()-X`, `tGravityAcc-mean()-Y`, `tGravityAcc-mean()-Z`: Mean of gravity acceleration.
- `tGravityAcc-std()-X`, `tGravityAcc-std()-Y`, `tGravityAcc-std()-Z`: Standard deviation of gravity acceleration.
- `tBodyAccJerk-mean()-X`, `tBodyAccJerk-mean()-Y`, `tBodyAccJerk-mean()-Z`: Mean of body acceleration jerk signals.
- `tBodyAccJerk-std()-X`, `tBodyAccJerk-std()-Y`, `tBodyAccJerk-std()-Z`: Standard deviation of body acceleration jerk signals.
- `tBodyGyro-mean()-X`, `tBodyGyro-mean()-Y`, `tBodyGyro-mean()-Z`: Mean of body gyroscope signals.
- `tBodyGyro-std()-X`, `tBodyGyro-std()-Y`, `tBodyGyro-std()-Z`: Standard deviation of body gyroscope signals.

... (full list continues for all 66 measurement variables)

## 📏 **Units**

- Acceleration values (`tBodyAcc`, `tGravityAcc`, etc.) are in **standard gravity units (g)**.
- Gyroscope values (`tBodyGyro`) are in **radians per second (rad/s)**.

## 🎯 **Final Notes**
- The dataset is **normalized** and **unitless**.
- Only **mean** and **standard deviation** measurements are included.
- The dataset follows **tidy data principles**, where each variable is in one column, and each observation is in one row.

For any questions, feel free to check the original dataset documentation:  
[UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

---

