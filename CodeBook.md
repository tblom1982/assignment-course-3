# Codebook for Human Activity Recognition Using Smartphones (HAR) Dataset

## Dataset Overview

The **Human Activity Recognition Using Smartphones (HAR)** dataset consists of data collected from smartphone sensors (accelerometer and gyroscope) while participants were performing various activities. The dataset is split into training and test sets, and each record represents an observation for a subject during a specific activity.

## Variables

The final dataset contains the following variables:

1. **subject**: The subject performing the activity (integer between 1 and 30).
2. **activity**: The activity performed by the subject. The possible values are:
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING

The features (columns) from the sensors represent various measurements of the accelerometer and gyroscope data. These variables are associated with measurements of the mean and standard deviation for each axis. The variables are named after the corresponding sensor feature and are cleaned as follows:
- Parentheses `()` were removed.
- Hyphens `-` were replaced with underscores `_`.

For example:
- `tBodyAcc-mean()-X` is renamed to `tBodyAcc_mean_X`.
- `tBodyAcc-std()-Y` is renamed to `tBodyAcc_std_Y`.

## Data Transformation

1. **Merging Data**: The training and test datasets were combined using `rbind()` to create a single dataset.
2. **Extracting Mean and Standard Deviation**: Only the features related to mean and standard deviation were selected using `grep()` with the regex `"mean\\(\\)|std\\()"`.
3. **Descriptive Activity Labels**: The numeric activity labels were replaced with descriptive activity names using the `factor()` function.
4. **Labeling Variables**: The feature names were cleaned and assigned to the dataset columns using `colnames()`.
5. **Tidy Data**: A final tidy dataset was created by calculating the mean for each activity and subject using `group_by()` and `summarise_all()` functions from the `dplyr` package.

## Output

The resulting dataset, `tidy_data.txt`, contains the following:
- `subject`: The subject number (1–30).
- `activity`: The activity label.
- `tBodyAcc_mean_X`, `tBodyAcc_mean_Y`, ..., `tBodyAcc_std_Z`: Various sensor measurements for each subject and activity, representing the mean and standard deviation values.

The data is saved in a tidy format where each row represents one observation for one subject performing one activity.

## Dataset Source

The dataset used in this project is publicly available at:  
[UCI HAR Dataset](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

