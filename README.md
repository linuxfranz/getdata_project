getdata_project
===============

This project contains an R script called <code>run_analysis.R</code> that downloads, extracts and tidys - as explained in CodeBook.md - data from [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The script depends on the R package <code>dplyr</code> being installed. It can be installed with <code>install.packages("dplyr")</code> in R, if it is not already installed.

Please note that you need an internet connection if you don't have the source dataset available locally. The script will download an extract the raw data in the working directory. If <code>Dataset.zip</code> exists it will not be downloaded again. If the directory <code>UCI HAR Dataset</code> doesn't exist the zip file will be extracted.

To run this script after cloning this repository:

* cd into the directory <code>getdata_project</code>.
* Start R.
* Source the script with <code>source("run_analysis.R")</code>.

After the script finished without errors there will be a file <code>result.txt</code> with the tidy result data in this directory.

This text file can be loaded into R for inspection with
<code>d <- read.table("result.txt", header=TRUE, as.is=TRUE)</code>.
