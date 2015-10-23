# working directory has to contain the UCI HAR Dataset directory

library(reshape2)

# read test files. subject, y=activity, x=feature/measurement vector
# note the inertial signals files are not read because they dont include mean/std for further analysis
sub.test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE, stringsAsFactors = FALSE)
act.test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE, stringsAsFactors = FALSE)
fea.test <- read.table("UCI HAR Dataset/test/x_test.txt", header = FALSE, stringsAsFactors = FALSE)
sub.train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE, stringsAsFactors = FALSE)
act.train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE, stringsAsFactors = FALSE)
fea.train <- read.table("UCI HAR Dataset/train/x_train.txt", header = FALSE, stringsAsFactors = FALSE)

# merge/bind test and train tables together
dftest <- cbind(sub.test, act.test, fea.test)
dftrain <- cbind(sub.train, act.train, fea.train)
df <- rbind(dftest, dftrain)
colnames(df)[1:2] <- c("subject", "activity")

# extracts mean and std measurements
# to start the measurement variable names is read from the features.txt file
# only the 'pure' mean and std on the measurements are needed, which means that
# the weighted average mean frequency variables, and the angle gravity means are excluded.
# if these are wanted, they can be extracted by removing the 2 \\b in the grep pattern
featext <- read.table("UCI HAR Dataset/features.txt", header = FALSE, stringsAsFactors = FALSE)
col.stdmean <- grep("\\b(std|mean)\\b", featext[,2])
df <- df[,c(1, 2, col.stdmean+2)]
colnames(df)[3:ncol(df)] <- featext[col.stdmean, 2]

# read activity labels to use as descriptive activity names for an activity factor
act.labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)
df$activity <- factor(df$activity, act.labels[,1], act.labels[,2])

# cleaning the descriptive names for the measurement variables, abreviations are kept
colnames(df) <- gsub("-mean", "-Mean", colnames(df))
colnames(df) <- gsub("-std", "-Std", colnames(df))
colnames(df) <- gsub("[-\\(\\)]", "", colnames(df))

# cleaning environment before tidying
rm(sub.test, sub.train, act.test, act.train, fea.test, fea.train, dftest, dftrain)
rm(act.labels, featext, col.stdmean)

# tidying :
df.melt <- melt(df, id = c("subject", "activity"), variable.name="stdandmean")
df.mean <- dcast(df.melt, subject + activity ~ stdandmean, mean)

# saving data set
write.table(df.mean, "tidy.txt", row.names = FALSE)

# can be read again with read.table("tidy.txt", header = TRUE)