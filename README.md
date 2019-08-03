README
---
Purpose
---
The purpose of this repo is to prepare data from UCIs "Human Activity Recognition Using Smartphones Data Set"" for further analysis. This is done by mergin the data and cleaning it into a tidy dataset useful for further analyzing

The raw data can be found here : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A script run_analysis.R is included in the repo to do the merging and cleaning.
For the script to be able to run its expected that the file is already downloaded, unzipped and the working directory is set to the folder containing the "UCI HAR Dataset" directory.
The steps in the script is explained in the following sections

A codebook is also included, explaining the variables of the final tidy dataset

Finally the tidy dataset is also included as a txt file tidy.txt

Merging datasets
---
Data for subjects, activities and measurements variables are spread into 3 files (subject_t*.txt, y_t*.txt and x_t*.txt), and also divided into 2 sets of training and test. The 3 files match, so they can be column bound together, and each column bound dataframe of training and test, can be row bound together afterwards. The intertial signals data is not used, because its not need for the further analyses.

Extraction of data for further analyzation
---
First the file features.txt contains description of the measurements, so its read as a basis for which measurements to keep. Only the 'pure' std and mean function of each measurement is needed, so the selection on the variable names is made to avoid the weigthed average mean frequency variables, and the angle gravity means. This is done by grep'ing the column names where std and mean are standalone words.

Descriptive activity names
---
The file activity_labels.txt contains the descpritive names for the activities, so its read and the activity in the dataframe is made into a factor

Descriptive variable names
---
The features.txt file has already been read and used, so now is the time for at bit of cleaning and removing unwanted symbols. The abbreviated descriptive names is kept, to avoid the variables names feeling too long. For further explanation of the technical names, the features_info.txt file can be read.

Tidying
---
The tidying is done with the purpose of getting the mean for each measurement calculated according to each subject and activity combination. To accomplish this the reshape2 library is used to first 'melt' the dataframe with subject and activity as id's and later cast these id's according to each measurement using mean as the aggregation. The end result is a wide tidy dataset where each mean measurement is in a separate variable column, and each observation of subject and activity combination is in a separate row.
