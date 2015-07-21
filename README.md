# DataScienceDataCleaning
Coursera Data Science Data Cleaning

To generate a "Tidy dataset" as described in the CodeBook.md, run the following R script:

 * `run_analysis.R`

This script assumes that the dataset found here:

 * [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

is unpacked to the local directory, resulting in the following directory being present:

 * `UCI HAR Dataset`

This script will create a file called `tidyDataSet.txt` being created in the local directory

To read in this dataset run the following in an R session:

 * `df <- read.table(file="tidyDataSet.txt", header = TRUE)`

