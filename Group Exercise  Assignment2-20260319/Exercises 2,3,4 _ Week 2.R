#Exercise 2_airquality
airquality

#calculate the mean of ozone_quality
ozone_quality <- mean(airquality$Ozone, na = TRUE)
print(ozone_quality)

#listing rows of data with missing values
airquality[!complete.cases(airquality),]

#remove missing data and name it as ozone_2 and compute mean and sd of wind speed, temperature & ozone concentration
ozone_2 <- na.omit(airquality)

#mean
colMeans(ozone_2[,c("Ozone","Wind","Temp")])

#standard deviation
apply(ozone_2[,c("Ozone","Wind","Temp")], 2, sd)

#Exercise 3 _ Soil Data
#Export to csv and txt
library(readxl)
Soil_compositions_xlsx <- read_excel("Soil_composition.xlsx")

#Export to csv
Soil_compositions_csv <- write.csv(Soil_compositions_xlsx,"Soil_compositions.csv")

#Export to txt
Soil_compositions_txt <- write.table(Soil_composition_xlsx, "Soil_compositions.txt",sep = "\t", row.names = FALSE)

#Import csv
Soil_compositions_csv <- read.csv("Soil_compositions.csv")
View(Soil_compositions_csv)

#Import to txt
Soil_compositions_txt <- read.table("Soil_compositions.txt", header = TRUE,sep = "\t")
View(Soil_compositions_txt)

#Import excel file library (read xl)
Soil_compositions_xlsx <- read_excel("Soil_composition.xlsx")
View(Soil_composition_xlsx)


#Exercise 4
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

#number of columns in the dataset
ncol(data)


#Exercise 5
#Export the data set in exercise 1
