library(haven)

#Set and Get working directory
setwd("C:/Users/michuk_lyn/Documents/R_Programming")
getwd()

#Read dataset and rename it to data
data <- read_sav("Monitoring_the_future.sav")
#view the data
View(data)

#first 5 rows of the dataset
head(data, 5)

#last 5 rows of the dataset
tail(data, 5)

#structure of the dataset
str(data)

#dimensions of the dataset
dim(data)

#number of rows in the dataset
nrow(data)

#number of colums in the dataset
ncol(data)
