#Online Academic Data Analysis Bootcamp Using Open-Access Program R: Essentials


#Session 1: Introduction to R

#Get started: Creating an R script
#Click File -> New File -> R Script
# The script editor opens with an empty script
# This is my first R script


#Important points:
#1. The 4 panes and moving focus to source; or just opening new script.
#2. The appearance
#3. Soft wrapping
#4. Clearing console

#Do some things

#Structure of a code: object <- function whereby <- is the assignment sign. On windows, press Alt + - for the <-


#Lets create some functions:

x = 19
y = 10
z = x + y # addition
w = y/x   # division

#Display the results a.k.a print results
x
y
z
w

# change x
x = "Jan Essential C"

# display the results
x
y
z
w

#To save: click File, then Save as

#To open: Double click on saved script file in your folder(directory)

#To run code: Highlight or Place the cursor along code line and either:
#1. click Run, or 
#2. Press Ctrl + Enter (Windows) or Command + Enter (Mac)


#Basic Commands
#Remember: object <- function

x <- c(1, 7, 8, 10, 7, 5, 3, 14, 19, 6, 5, 1, 5, 3) #The 'c' stands for concatenate; to combine. It takes multiple arguments and creates a vector by concatenating them.
max(x, na.rm = T) #maximum removing missing data  #na.rm - remove missing data
min(x, na.rm = TRUE) #minimum removing missing data
mean(x, na.rm = TRUE) #mean removing missing data
median(x, na.rm = T) #median removing missing data
sum(x, na.rm = T) #sum removing missing data
var(x, na.rm = T) #variance removing missing data #Measures data spread by averaging the squared differences from the mean.
sd(x, na.rm = T) #Standard deviation removing missing data #The square root of the variance.
length(x) #number of items
summary(x) #produce result summaries of data models
table(x) #tabulation or crosstabulation
x[5] #List or subsetting - here the 5th item of dataset x


#Useful Functions
mtcars  #This is a practice dataset already in R
head(mtcars) #Can display any number you want
tail(mtcars)
str(mtcars)
class(mtcars) #class or type of an object
names(mtcars) #names


#Other examples
height <- c(1, 2, 3) # vector for use in examples below
weight <- c(4, 5, 6) # vector for use in examples below

# c(vector1, vector2) # combine objects into a vector

c(height, weight)

# cbind(vector1, vector2) # combine objects as columns

cbind(height, weight)


#combine objects as rows
rbind(height, weight) # combine objects as rows


ls() # list current objects in workspace
rm(gender) # delete an object from workspace
ls()


newobject <- edit(mtcars) # edit copy and save a new object
print(newobject)

#or
newobject


fix(mtcars) # edit in place - replace original
mtcars


#Points to note:

x <- c(1:10) #Make vector of numbers from 1 to 10
x

x[(x>8) | (x<5)] #x greater than 8 and less than 5 #  yields 1 2 3 4 9 10

# How it works:
x <- c(1:10)
x
x > 8
x < 5

x>8|x<5

#x[c(T,T,T,T,F,F,F,F,T,T)]    


#Other points to note:
#To list the objects that you have in your current R session use the function ls or the function objects.
ls()
objects()

#Adding objects in R session eg.
x2 = 9
y2 = 10

ls()

#To list all objects with the letter x:
ls(pattern = "x")

# Use the function rm to remove one or more objects from your session.
rm(x, x2)

ls(pattern="x")#Confirming removal


#Lets create two small vectors with data and a scatterplot.

x <- c(1,2,3,4,5,6)
y <- c(6,8,3,5,7,1)
plot(x,y)
title("My first scatterplot")


x <- c(1,2,3,4,5,6)
y <- c(6,8,3,5,7,1)
plot(x,y, pch = 19, col = "green", cex = 2)
title("My first scatterplot", col.main = "red")

#You can improve the plot by adding: pch = eg 20, col = eg "red", cex = eg 3 in the plot, and col.main = eg "blue" in the title.


#R as a calculator
x = sin(9)/75
y = log(x) + x^2
x
y


# Creating a matrix

m <- matrix(c(1,2,4,1), ncol=2)
m


# Working directory
setwd("C:/Users/Samuel Mwendwa/OneDrive/Desktop/R Training/Essential 2024")
setwd("C:/Users/Samuel Mwendwa/OneDrive/Desktop/R Training/Essential 2024")
setwd("C:\\Users\\Samuel Mwendwa\\OneDrive\\Desktop\\R Training\\Essential 2024")
setwd("C:/Users/Samuel Mwendwa/OneDrive/Desktop/R Training/Essential 2024")

#setwd("c:/docs/mydir")


getwd() # print the current working directory



#Workspace image #saving work for later use - saves variables, functions and objects in one file.

#You can also explicitly save the workspace image. ## save to the current working directory.

#save.image(insertfile_name_and_path_here)

#General form:
#save.image(file = "C:/path/name.RData") #directory/name.RData is the concept

save.image("C:/Users/Samuel Mwendwa/OneDrive/Desktop/R Training/Essential 2024/Okeniyi.RData")

## just checking what the current working directory is
getwd()

## save to a specific file and location
#save.image("C:\\Program Files\\R\\R-2.5.0\\bin\\sessionname.RData")


# Work with your previous commands
history() # display last 25 commands
history(max.show = Inf) # display all previous commands

# save your command history
savehistory(file = "myfile") # default is ".Rhistory"
savehistory(file = "history") #It's a useful way to keep a record of the commands you've executed in an R session.

# recall your command history
loadhistory(file = "history") # default is ".Rhistory


#R Help

help.start() # general help
help(lm) # help about function lm
?lm # same thing
apropos("lm") # list all function containing string lm
?apropos #allows you to search for objects containing a specified substring, helping you discover functions or variables in the current R session.
example(lm) # show an example of function lm

# Search for function lm in help manuals and archived mailing lists
 RSiteSearch("lm")
 
# Get vignettes on using installed packages. #Vignettes are long-form guide to your package.
 vignette() # show available vignettes
 vignette("tutorial") # show specific vignette - specifically for the agricolae package in this case.
            

# R Packages 
#A collection of functions, datasets, and code - extends the functionality of R.
# Use the function 'search' to see a list of packages that are currently attached to the system, this list is also called the search path.
search()


#Installing packages

if(!require(MASS))install.packages("MASS") #If MASS is installed, load it; else, install and load it.


#or
install.packages("MASS", dependencies = TRUE) 
library(MASS)


#Now the "shoes" data becomes available from MASS package
# This is a list of two vectors, giving the wear of shoes of materials A and B for one foot each of ten boys.

shoes

shoes$A #The dollar sign accesses and extracts specific data eg columns.

shoes$B

     
#The function library can also be used to list all the available libraries on your system with a short description. 

# Run the function without any arguments
library()
  

# Installing one package
#install.packages()
install.packages("graphics", dependencies = T)

# Several packages: just replace the package names
install.packages(c("graphics", "moments", "car"), dependencies = T)

#or seperately
install.packages("graphics", dependencies = T) # T = TRUE
install.packages("moments", dependencies = T)
install.packages("car", dependencies = T)
#Then load the libraries


#R Datasets
# R comes with a number of sample datasets that you can experiment with. 
# Type data( )  to see the available datasets. 
#The results will depend on which packages you have loaded. 
data()    

#Example: for details on a sample dataset CO2. #Dataset on carbon (iv) oxide uptake in grass plants

 help(CO2) 
 
 
#R Conflicting objects
#### R will not warn you when you use an existing name, object name.

mean = 10
mean


# The object mean already exists in the base package, but is now masked by your object mean. To get a list of all masked objects, use the function: conflicts.

conflicts()

# You can safely remove the object mean with the function rm() without risking deletion of the mean function.

rm(mean)

#The function mean is now unmasked 
mean
  

# Data Types 

#1. Logical - TRUE or FALSE values, used for logical operations and conditions.

x = c(3, 7, 1, 2)

x > 2 # TRUE if x is greater than 2

x == 2 #TRUE if x is equal to 2

!(x < 3) # TRUE is x is not (!) less than 3 - includes the 3.

which(x > 2) #To get the location in a vector where values of x are > 2. Location/position is the concept.


#2. Character/String -  holds text information

y = c("a", "bc", "def")

length(y)

nchar(y) #number of characters in each "entry"

y == "a"  #which of the strings is "a"

y == "b" #which of the strings is "b"


#3. Factor - for categorical variables, aiding in statistical analysis with distinct levels or categories.

# Example - a family of two girls (1) and four boys (0),
kids = factor(c(1,0,1,0,0,0), 
              levels = c(0, 1),
              labels = c("boy", "girl"))
kids

class(kids)

mode(kids) #numbers


#Variable gender with 20 "male" entries and 30 "female" entries
gender <- c(rep("male",20), rep("female", 30)) #rep is repeat
gender <- factor(gender)
gender

#stores gender as 20 1s and 30 2s and associates 1=female, 2=male internally (alphabetically).
#R now treats gender as a nominal variable

summary(gender)           


#4. Matrix - a vector with two-dimensional shape information.
xx = matrix(1:6, nrow = 3, 
            ncol =2)
xx
    
class(xx)

is.vector(xx) # Check if xx is a vector (not true)

is.matrix(xx) # check if xx is a matrix (true)

length(xx) #1:6

dim(xx) #rows, columns.

#Identify rows, columns or elements using subscripts in mtcars dataset available in R. This data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

mtcars

mtcars[,4] # 4th column of matrix
mtcars[3,] # 3rd row of matrix
mtcars[2:4,1:3] # rows 2,3,4 of columns 1,2,3


#5. Vectors - one-dimensional arrays holding elements of the same data type.

a <- c(1,2,5.3,6,-2,4) # numeric vector
b <- c("one","two","three") # character vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE) #logical vector

# Refer to elements of a vector using subscripts.
a[c(2,4)] # 2nd and 4th elements of vector (a).



#6. Dataframes - two-dimensional structures that organize data into rows and columns, similar to a table.

#The elements of a data frame can be numeric vectors, factor vectors, and logical vectors, but they must all be of the same length.

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)

mydata <- data.frame(d,e,f)
mydata

names(mydata) <- c("ID","Color","Passed") # new variable names
mydata

#There are a variety of ways to identify the elements of a dataframe.
mydata[2:3] # columns 2 and 3 of dataframe
mydata[c("Color", "Passed")] # columns Color and Passed from dataframe
mydata$Color # variable Passed in the dataframe


# 7. Lists - A list allows you to gather a variety of (possibly unrelated) objects under one name.

myList = list(a = 1:10, b = "def", c(TRUE, FALSE, TRUE))
myList$a

myList$b

myList[[3]] #Third element of the list.

length(myList) # there are 3 elements in the list
class(myList) # the class is a list
names(myList) # are a, b and the empty character "". The third element is unnamed.
myList[1:2] # returns a list with two elements
myList[1] # returns a list with one element. 
myList[[1]] # returns the first a vector with ten elements, the numbers 1, 2, ..., 10
length(myList[[1]])#returns the length of the vector stored in the first element of the list myList

#What is length(myList[[1]]) #See above.


           