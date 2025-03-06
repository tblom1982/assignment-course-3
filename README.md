# Human Activity Recognition Using Smartphones (HAR) Dataset

## Project Overview

This project demonstrates my ability to collect, work with, and clean a dataset in order to prepare tidy data for later analysis. The dataset used in this project is the **Human Activity Recognition Using Smartphones (HAR) dataset**. The goal is to perform the following tasks:
1. Merge the training and test datasets.
2. Extract measurements related to the mean and standard deviation.
3. Assign descriptive activity names.
4. Label the dataset with descriptive variable names.
5. Create a tidy dataset containing the average of each variable for each activity and subject.

## Repository Contents

- `run_analysis.R`: The R script that performs the analysis on the HAR dataset.
- `tidy_data.txt`: The resulting tidy data set containing the averages of each variable for each activity and subject.
- `CodeBook.md`: A document that provides detailed information about the variables, the dataset, and the transformations performed.
- `README.md`: This file, which explains the project and how to use the script.

## How to Use the Script

1. Clone this repository to your local machine.
2. Ensure that the dataset is available and the path is correctly set in the `setwd()` function in the `run_analysis.R` script.
3. Run the `run_analysis.R` script in RStudio or any R environment. This script will:
    - Read the training and test data files.
    - Merge and clean the data according to the project instructions.
    - Output the tidy dataset as `tidy_data.txt`.
4. Refer to the `CodeBook.md` for detailed information about the dataset and the transformations applied.

## Dependencies

- R (version 3.5 or higher)
- `dplyr` package for data manipulation
- `tidyr` package for reshaping the data

## Grading Criteria

This project will be evaluated based on the following criteria:
- Merging and cleaning the data
- Extracting only the mean and standard deviation measurements
- Correctly labeling the dataset with descriptive activity names and variable names
- Creating a tidy dataset that contains averages for each activity and subject

Feel free to reach out with any questions or comments regarding the project.

