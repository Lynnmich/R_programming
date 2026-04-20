#Data set
manager <- c(1, 2, 3, 4, 5)
date <- c("10/24/08", "10/28/08", "10/1/08", "10/12/08", "5/1/09")
country <- c("US", "US", "UK", "UK", "UK")
gender <- c("M", "F", "F", "M", "F")
age <- c(32, 45, 25, 39, 99)
q1 <- c(5, 3, 3, 3, 2)
q2 <- c(4, 5, 5, 3, 2)
q3 <- c(5, 2, 5, 4, 1)
q4 <- c(5, 5, 5, NA, 2)
q5 <- c(5, 5, 2, NA, 1)

leadership <- data.frame(manager, date, country, gender, age, 
                         q1, q2, q3, q4, q5, stringsAsFactors = FALSE)

leadership

#recode the value 99 for age to missing with NA.

leadership$age[leadership$age == 99] <-NA
leadership

#change the variables manager to managerID and date to testDate.
leadership$managerID <- leadership$manager
leadership

#or
names(leadership)[names(leadership) == "manager"] <- "managerID"
leadership

leadership$testDate <- leadership$date
leadership

#or
names(leadership)[names(leadership) == "date"] <- "testDate"
leadership

#The date is coded as a character variable in mm/dd/yy format. Please replace it in the data frame as a date variable.
leadership$testDate <- as.Date(leadership$testDate, format = "%m, %d, %y")
leadership

#Create a new dataset containing rows sorted:
#from youngest manager to oldest manager.
young_to_old <- leadership[order(leadership$age), ]
young_to_old

#into female followed by male, and youngest to oldest within each gender.
female_male_young_old <- leadership[order(leadership$gender, leadership$age), ]
female_male_young_old

#by gender, and then from oldest to youngest manager within each gender.
gender_old_young <- leadership[order(leadership$gender, -leadership$age), ]	
gender_old_young

#Select variables q1, q2, q3, q4, and q5 from the leadership data frame and save them to the data frame newdata
newdata <- leadership[, c("q1", "q2", "q3", "q4", "q5")]
newdata


#Exercise 2
#Selecting or excluding observations (rows) is typically a key aspect of successful data preparation and analysis.

#Select all men over 30 from the leadership dataframe.
men_over_30 <- leadership[(leadership$gender == "M") & (leadership$age > 30), ]
men_over_30

#Select all rows that have a value of age greater than or equal to 35 or age less than 24 and keep the variables q1 through q4.

greater_equal_less <- leadership[(leadership$age >= 35) | (leadership$age < 24), 
                                 c("q1", "q2", "q3", "q4")]
greater_equal_less <- leadership[(leadership$age >= 35) | (leadership$age < 24), 
                                 select = q1:q4]


greater_equal_less

#Select all men over the age of 25 and keep variables gender through q4 (gender, q4, and all columns between them). Hint: the colon operator from:to provides all variables in a data frame between the from variable and the to variable, inclusive.
men_over_25 <- leadership[(leadership$gender == "M") & (leadership$age > 25), 
                          c(which(names(leadership) == "gender"):which(names(leadership) == "q4"))]
men_over_25

#Take a random sample of size 3 from the leadership dataset without replacement.
sample_without_replacement <- leadership[sample(nrow(leadership), 3, replace = FALSE), ]
sample_without_replacement

#Transpose the leadership dataframe so that the column names (variable names) become the row names.
transpose_data <- t(leadership)
transpose_data

#Aggregate the mtcars data by number of cylinders (cyl) and gears (gear), returning means on each of the numeric variables. The mtcars data is part of the R package (run help(mtcars) to view its description)
library(dplyr)

aggregate(. ~ cyl + gear, data = mtcars, mean)

means_of_variables <- mtcars %>% 
  group_by(cyl, gear) %>%
  summarise(across(everything(), mean), .groups = "drop")

means_of_variables
