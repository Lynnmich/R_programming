getwd()
#C:/Users/michuk_lyn/Documents/R_Programming

setwd("C:/Users/michuk_lyn/Documents/R_Programming")

getwd()
help("InsectSprays")
#Description
#The counts of insects in agricultural experimental units treated with different insecticides.

#A data frame with 72 observations on 2 variables.

#[,1]	count	numeric	Insect count
#[,2]	spray	factor	The type of spray
#first 6 rows
head(InsectSprays)

#last 6 rows
tail(InsectSprays)

#view whole data set
View(InsectSprays)

#edit the data set
edit(InsectSprays)

#Edit row one column one of the data set and rename it
InsectSprays_2<-edit(InsectSprays,)
InsectSprays_2

mean(InsectSprays_2$count)
max(InsectSprays_2$count)
min(InsectSprays_2$count)
median(InsectSprays_2$count)
sum(InsectSprays_2$count)
var(InsectSprays_2$count)
sd(InsectSprays_2$count)

#x is assigned as an object within InsectSprays_2 count variable
x<-InsectSprays_2$count

#x is greater than 20 and x is less than 5
x[(x>20)|(x<5)]

#print the second column of the data set
InsectSprays_2[,2]
#print the third row of the data set
InsectSprays_2[3,]

#rows 6, 8, 10 and columns 1, 2 of the data set 
#formula 1
InsectSprays_2[c(6,8,10),(1:2)]
#or formula 2
InsectSprays_2[c(6,8,10),c(1,2)]

#use help func to ask for help regarding the fucntion sd and where you can use it
#first option
help(sd)
#or
?sd
#sd(x, na.rm = FALSE)

apropos("sd")
# [1] ".rowNamesDF<-"                       
#[2] ".rs.activateGraphicsDevice"           
#[3] ".rs.api.isDesktop"                    
#[4] ".rs.connectionUnregisterWindowsDriver"
#[5] ".rs.createNotebookGraphicsDevice"     
#[6] ".rs.findShinyTestsDir"                
#[7] ".rs.getCompletionsData"               
#[8] ".rs.getCompletionsDollar"             
#[9] ".rs.getCompletionsDoubleBracket"      
#[10] ".rs.initGraphicsDevice"            
#[11] ".rs.isDataTableExtractCall"          
#[12] ".rs.isDefaultTheme"                  
#[13] ".rs.isDesktop"                       
#[14] ".rs.isDevPackage"                    
#[15] ".rs.isDirectoryOnlyCompletionFunction"
#[16] ".rs.isDownloadMethodSecure"          
#[17] ".rs.newDesktopGraphicsDevice"        
#[18] ".rs.sql.asDBIConnection"             
#[19] ".rs.withS3OverridesDisabled"         
#[20] "asDateBuilt"                         
#[21] "assignClassDef"                      
#[22] "completeClassDefinition"             
#[23] "getClassDef"                         
#[24] "isClassDef"                          
#[25] "isdebugged"                          
#[26] "makePrototypeFromClassDef"           
#[27] "sd"                                  
#[28] "SSD"                                 
#[29] "superClassDepth"                     
#[30] "tsdiag"                              
#[31] "TukeyHSD"                            
#[32] "UScitiesD"  

example(sd)
#sd> sd(1:2) ^ 2
#[1] 0.5

#make a data set factor composing of marital status 40 married, 30 of status single and 30 status not specified. 
marital_status<-c(rep("married",40),rep("single",30),rep("not specified", 30))
marital_status<-factor(marital_status)
#or
marital_status<-factor(c(rep("married",40),rep("single",30),rep("not specified", 30)))

#Inspect the summary funct 
summary(marital_status)

#make and name a matrix consisting of the numbers between 50 and 60 with 2 rows and 5 columns
matrix=matrix(50:59,nrow = 2,ncol = 5)
matrix

#Inspect if its a matrix, its length and dimensions
is.matrix(matrix)
#[1] TRUE

length(matrix)
#[1] 10

dim(matrix)
#[1] 2 5

getwd()
#"C:/Users/michuk_lyn/Documents/R_Programming"

save.image()
#load("C:/Users/michuk_lyn/Documents/R_Programming/.RData")

#Reload workspace after reopening RStudio
load("C:/Users/michuk_lyn/Documents/R_Programming/.RData")

#Save history
savehistory(file="Group1.Rhistory")
#or
savehistory("Group1.Rhistory")
loadhistory("Group1.Rhistory")
#not loading full history,uncertain why