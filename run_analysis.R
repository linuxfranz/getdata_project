url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- "Dataset.zip"
dir <- "UCI HAR Dataset"
if (!file.exists(file)) {
    download.file(url, destfile=file, method="curl")
    dataDownloaded <- date()
}
if (!file.exists(dir)) {
    unzip(file)
}

cols_3d <- c(rep("numeric",6),rep("NULL",34))  # 40
cols_3df <- c(rep("numeric",6),rep("NULL",73)) # 79
cols_2d <- c(rep("numeric",2),rep("NULL",11))  # 13
cols <- c(rep(cols_3d,5),   # 200
          rep(cols_2d,5),   # 265
          rep(cols_3df,3),  # 502
          rep(cols_2d,4),   # 554
          rep("NULL", 7))     # 561
cols_labels <- cols == "numeric"
data_x <- read.csv(paste(dir, "test/X_test.txt", sep="/"), sep="", header=FALSE, colClasses=cols)
data_y <- read.csv(paste(dir, "test/y_test.txt", sep="/"), sep="", header=FALSE)
data_x <- rbind(data_x, read.csv(paste(dir, "train/X_train.txt", sep="/"), sep="", header=FALSE, colClasses=cols))
data_y <- rbind(data_y, read.csv(paste(dir, "train/y_train.txt", sep="/"), sep="", header=FALSE))
names(data_y) <- "activitynr"
activities <- read.csv(paste(dir, "activity_labels.txt", sep="/"), sep="", header=FALSE, col.names=c("nr", "activity"))
data_y <- merge(data_y, activities, by.x="activitynr", by.y="nr")
feats <- read.csv(paste(dir, "features.txt", sep="/"),
                  sep="", header=FALSE, colClasses=c("NULL","character"))
names(data_x) <- feats[cols_labels,1]
data <- cbind(data_x, data_y)
