---
title: "CodeBook.md"
output: html_document
---
Info
---
The README file already explains where the raw data comes from, and the steps to produce the tidy dataset, so consider this codebook to be of the data dictionary type

Identifiers
---
* subject *integer*
* activity *factor*
    + 1 WALKING
    + 2 WALKING_UPSTAIRS
    + 3 WALKING_DOWNSTAIRS
    + 4 SITTING
    + 5 STANDING
    + 6 LAYING

Mean measurements
---
* tBodyAccMeanX *numeric*
* tBodyAccMeanY *numeric*
* tBodyAccMeanZ *numeric*
* tBodyAccStdX *numeric*
* tBodyAccStdY *numeric*
* tBodyAccStdZ *numeric*
* tGravityAccMeanX *numeric*
* tGravityAccMeanY *numeric*
* tGravityAccMeanZ *numeric*
* tGravityAccStdX *numeric*
* tGravityAccStdY *numeric*
* tGravityAccStdZ *numeric*
* tBodyAccJerkMeanX *numeric*
* tBodyAccJerkMeanY *numeric*
* tBodyAccJerkMeanZ *numeric*
* tBodyAccJerkStdX *numeric*
* tBodyAccJerkStdY *numeric*
* tBodyAccJerkStdZ *numeric*
* tBodyGyroMeanX *numeric*
* tBodyGyroMeanY *numeric*
* tBodyGyroMeanZ *numeric*
* tBodyGyroStdX *numeric*
* tBodyGyroStdY *numeric*
* tBodyGyroStdZ *numeric*
* tBodyGyroJerkMeanX *numeric*
* tBodyGyroJerkMeanY *numeric*
* tBodyGyroJerkMeanZ *numeric*
* tBodyGyroJerkStdX *numeric*
* tBodyGyroJerkStdY *numeric*
* tBodyGyroJerkStdZ *numeric*
* tBodyAccMagMean *numeric*
* tBodyAccMagStd *numeric*
* tGravityAccMagMean *numeric*
* tGravityAccMagStd *numeric*
* tBodyAccJerkMagMean *numeric*
* tBodyAccJerkMagStd *numeric*
* tBodyGyroMagMean *numeric*
* tBodyGyroMagStd *numeric*
* tBodyGyroJerkMagMean *numeric*
* tBodyGyroJerkMagStd *numeric*
* fBodyAccMeanX *numeric*
* fBodyAccMeanY *numeric*
* fBodyAccMeanZ *numeric*
* fBodyAccStdX *numeric*
* fBodyAccStdY *numeric*
* fBodyAccStdZ *numeric*
* fBodyAccJerkMeanX *numeric*
* fBodyAccJerkMeanY *numeric*
* fBodyAccJerkMeanZ *numeric*
* fBodyAccJerkStdX *numeric*
* fBodyAccJerkStdY *numeric*
* fBodyAccJerkStdZ *numeric*
* fBodyGyroMeanX *numeric*
* fBodyGyroMeanY *numeric*
* fBodyGyroMeanZ *numeric*
* fBodyGyroStdX *numeric*
* fBodyGyroStdY *numeric*
* fBodyGyroStdZ *numeric*
* fBodyAccMagMean *numeric*
* fBodyAccMagStd *numeric*
* fBodyBodyAccJerkMagMean *numeric*
* fBodyBodyAccJerkMagStd *numeric*
* fBodyBodyGyroMagMean *numeric*
* fBodyBodyGyroMagStd *numeric*
* fBodyBodyGyroJerkMagMean *numeric*
* fBodyBodyGyroJerkMagStd *numeric*

Measurements abreviations
---
abreviation | text
----------  | ---
Acc         | accelerometer
f           | frequency domain signals
Gyro        | gyroscope
Mag         | magnitude
Std         | Standard deviation
t           | time
X, Y and Z  | 3 axial signals
