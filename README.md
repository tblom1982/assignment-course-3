# Human Activity Recognition using Smartphones - Data Cleaning and Analysis

This repository contains the script and related files to perform data cleaning and analysis on the Human Activity Recognition (HAR) dataset using smartphone sensor data. The dataset was obtained from the UCI Machine Learning Repository and contains sensor data collected from accelerometers and gyroscopes of Samsung Galaxy S II smartphones. The goal of the project is to clean and organize the data into a tidy format that can be used for analysis.

## Files in the Repository:

- `run_analysis.R`: The main R script that performs the data cleaning and analysis steps.
- `tidy_data.txt`: The resulting tidy dataset after running `run_analysis.R`.
- `CodeBook.md`: Describes the variables, the dataset, and the transformations applied to clean the data.
- `README.md`: This file that explains how the code works and how to use it.

## Dataset

The dataset is available from [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). It contains data from 30 volunteers performing 6 different activities while wearing a Samsung Galaxy S II smartphone.

The dataset includes the following files:

- `X_train.txt` and `X_test.txt`: Training and test data.
- `y_train.txt` and `y_test.txt`: Activity labels for the training and test data.
- `subject_train.txt` and `subject_test.txt`: Identifiers for the subjects who performed the activities.
- `features.txt`: A list of all the features in the dataset.
- `activity_labels.txt`: A mapping of activity labels to activity names.

## Running the Script

### Prerequisites

Before running the script, ensure that you have the following R packages installed:

- `dplyr`
- `tidyr`

You can install these packages using the following commands:

```R
install.packages("dplyr")
install.packages("tidyr")
