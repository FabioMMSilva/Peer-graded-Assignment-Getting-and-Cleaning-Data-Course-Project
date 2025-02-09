# Getting and Cleaning Data - Course Project

This repository contains the submission for the "Getting and Cleaning Data" course project. The goal of this project is to process and clean the **UCI HAR Dataset**, which contains sensor data from accelerometers and gyroscopes collected from smartphones.

## 📂 **Files in this Repository**
- **`run_analysis.R`** → The main R script that processes the dataset.
- **`tidy_data.txt`** → The final tidy dataset, where each variable is averaged for each subject and activity.
- **`CodeBook.md`** → The code book explaining the variables, transformations, and units used in the final dataset.
- **`README.md`** → This file, which describes the project.

## 📜 **Project Description**
The script **`run_analysis.R`** performs the following steps:

1. **Merges the training and the test sets** to create one data set.
2. **Extracts only the measurements on the mean and standard deviation** for each measurement.
3. **Uses descriptive activity names** instead of numeric labels.
4. **Appropriately labels the dataset** with descriptive variable names.
5. **Creates a second, independent tidy data set** with the average of each variable for each activity and each subject.

## 🛠 **How to Run the Script**
To generate the tidy dataset, follow these steps:

1. Clone this repository:
   ```bash
   git clone https://github.com/your_username/your_repo.git
   ```
2. Set your working directory to the repository folder in R.
3. Run the script:
   ```r
   source("run_analysis.R")
   ```
4. The script will generate `tidy_data.txt` in the working directory.

## 📊 **Dataset Information**
The dataset used in this project is the **Human Activity Recognition Using Smartphones Dataset (UCI HAR Dataset)**, which contains motion sensor data from Samsung Galaxy S smartphones worn by 30 volunteers.

For more details, check the original dataset: [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

---

## 🏆 **Evaluation Criteria**
This project meets the following criteria:
✅ The submitted dataset is tidy.  
✅ The repository contains the required scripts.  
✅ A **CodeBook.md** is included to explain variables, transformations, and units.  
✅ This README provides clear instructions.  
✅ The work is original and submitted by the student.

---

## 📧 **Contact**
If you have any questions, feel free to reach out via GitHub.

---
