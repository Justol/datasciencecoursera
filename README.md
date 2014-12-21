datasciencecoursera
===================

Created to satisfy the requirement of a class

The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The following requirements are to be met:
1) create a tidy data set
2) create a link to a Github repository with script for performing the analysis, and 
3) create a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
create a README.md in the repo with our scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The task:
To create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

A DESCRIPTION OF HOW THE SCRIPT WORKS:
setwd("~/GettingCleaningData/")

list.files()

##This script assumes that wearables.zip has been fully unzipped and the following files are in the wd ready to be read with the read.table function:
 ####activity_labels.txt; features.txt; test/; train/

## Do a row bind and column bind

> ##Read the features data and filter it so we have only features that have mean() or standard deviations()

##FILTER only data with mean() and std()

# select only the means and standard deviations from data
# increment by 2 because data has subjects and labels in the beginning

# read the labels (activities_labels.txt data)

# first make a list of the current column names and feature names
# then tidy that list: by removing every non-alphabetic character and converting to lowercase

# find the mean for each combination of subject and label with aggregate function

# write the data set in your computer as a txt file created with write.table() using row.name=FALSE
 
#check your wd to make sure it is saved there before uploading 
