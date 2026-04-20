#Exercise 1

#Read CSV file

getwd()

setwd("C:/Users/michuk_lyn/Documents/R_Programming/Practicals Hands on Session - Plotting Using R-20260402")

#Read the GSSsubset into R
GSSsubset <- read.csv("GSSsubset.csv")


#To avoid “figure margins too large error” first change graphical parameters by running the following code
par(mar=c(1,1,1,1))

#a)	Create a histogram of income changing the breakpoints between histogram bars to 25
x <- GSSsubset$income
hist(x, 
     col = "steelblue", 
     frame = FALSE, 
     breaks = 25, 
     main = "Histogram of Income",)

#b)	Create a density plot of income and fill the density plot with a colour of choice.
income_dens <- density(GSSsubset$income)
# plot density
plot(income_dens, 
     frame = FALSE, 
     col = "steelblue", 
     main = "Density plot of Income")


# Fill the density plot using polygon()
polygon(income_dens, col = "steelblue")


#c)	Create a barplot of the degrees variable giving each bar a different colour. Hint: first tabulate the number of participants for each degree level using table(GSSsubset$degree) and allocate this an object name to be used for plotting.

degree_table <- table(GSSsubset$degree)

degree_table

# Bar plot of one variable
barplot(degree_table,         
        main = "Distribution of Degree Levels",
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"))


#d)	Change the barplot in d) above into a horizontal bar plot (adding the argument horiz = TRUE).
barplot(degree_table, 
        main = "Distribution of Degree Levels",
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"),
        horiz = TRUE)

#e)	Save the barplot using:
#	RStudio Plots Panel, and
#	directly as a pdf to your working directory.
pdf("degree_barplot2.pdf")

barplot(degree_table,
        main = "Distribution of Degree Levels",
        xlab = "Degree",
        ylab = "Number of Participants",
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"))

dev.off()
getwd()
