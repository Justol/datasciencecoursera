setwd("~/GettingCleaningData/")

list.files()

##This script assumes that wearables.zip has been fully unzipped and the following files are in the wd ready to be read:
 ####activity_labels.txt; features.txt; test/; train/

test1 <- read.table("test/X_test.txt")
test2 <- read.table("test/y_test.txt", col.names="label")
test3 <- read.table("test/subject_test.txt", col.names="subject")
train1 <- read.table("train/X_train.txt")
train2 <- read.table("train/y_train.txt", col.names="label")
train3 <- read.table("train/subject_train.txt", col.names="subject")

## Do a row bind and column bind
data < - rbind(cbind(test1, test2, test3), cbind(train1, train2, train3))

> ##Read the features data and filter it so we have only features that have mean() or standard deviations()
> features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)

####FILTER only data with mean() and std()
features.mean_std <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

# select only the means and standard deviations from data
# increment by 2 because data has subjects and labels in the beginning

data.mean_std <- data[, c(1, 2, features.mean_std$V1+2)]

# read the labels (activities_labels.txt data)
labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
# replace labels in data with label names
data.mean_std$label <- labels[data.mean_std$label, 2]

# first make a list of the current column names and feature names
good.colnames <- c("subject", "label", features.mean_std$V2)

# then tidy that list: by removing every non-alphabetic character and converting to lowercase
good.colnames <- tolower(gsub("[^[:alpha:]]", "", good.colnames))
# then use the list as column names for data
colnames(data.mean_std) <- good.colnames

# find the mean for each combination of subject and label
aggr.data <- aggregate(data.mean.std[, 3:ncol(data.mean_std)],
by=list(subject = data.mean_std$subject, 
label = data.mean_std$label),
 mean)

# write the data set in your computer as a txt file created with write.table() using row.name=FALSE
write.table(format(aggr.data, scientific=T), "tidy2.txt",
 row.names=F, col.names=F, quote=2)
 
  #check your wd to make sure it is saved there before uploading 
