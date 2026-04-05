#Exercise 1 
#create the neurosis data frame

names <- c("Ben", "Martin", "Andy", "Paul", "Graham", "Carina", "Karina", "Doug", "Mark", "Zoe")
names

birth_date <- as.Date(c("1977-07-03", "1969-05-24", "1973-06-21", "1970-07-16", "1949-10-10", "1983-11-05", "1987-10-08", "1989-09-16", "1973-05-20", "1984-11-12"))
birth_date

marriage_date <- as.Date(c("1997-04-03", "1999-04-24", "2003-12-25", "1996-03-11", "1976-05-07", "2010-03-02", "2012-02-01", "2011-10-05", "1996-03-12", "2009-02-01"))
marriage_date

friends <- c(5,2,0,4,1,10,12,15,12,17)
friends

alcohol <- c(10,15,20,5,30,25,20,16,17,18)
alcohol

initial_income <- c(20000,40000,35000,22000,50000,5000,100,3000,10000,10)
initial_income

neurotic <- c(10,17,14,13,21,7,13,9,14,13)
neurotic

neurosis <- data.frame(names, birth_date, marriage_date, friends, alcohol, initial_income, neurotic)
neurosis

#Add a new column to the neurosis data frame
current_income <- c(30000,55000,50000,35000,65000,15000,1500,5500,23000,510)
current_income
neurosis$current_income <- current_income
neurosis

#Calculate income increase
income_increase <- c((neurosis$current_income-neurosis$initial_income)/neurosis$initial_income*100)
income_increase
neurosis$income_increase <- income_increase
neurosis

#Age at marriage
age_at_marriage <- as.numeric(difftime(neurosis$marriage_date, neurosis$birth_date, units = "days")) / 365.25
age_at_marriage <- round(age_at_marriage, 1)
age_at_marriage
neurosis$age_at_marriage <- age_at_marriage
neurosis

#Add sex as a factor variable
sex <- factor(c("female", "female", "female", "female", "female", "male", "male", "male", "male", "male"))
sex
neurosis$sex <- sex
neurosis


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
write.table(neurosis, "neurosis.txt", sep="\t") 
getwd()

library(writexl)
write_xlsx(neurosis, "neurosis.xlsx")

ls()

names(neurosis)

str(neurosis)

dim(neurosis)
