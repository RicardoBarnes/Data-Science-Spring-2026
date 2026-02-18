#Author: Ricardo Barnes, Date: 02/18/2026, Purpose: ANOVA test

#loading dplyr dplyr
library(dplyr)
library(ggplot2)

#reading the poisons.csv file from the GitHub repository
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

#reading the dataset using read.csv function
df<- read.csv(PATH)

#plot data into a box plot
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()
