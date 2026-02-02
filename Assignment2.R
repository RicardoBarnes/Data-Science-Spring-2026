
#Author: Ricardo Barnes, Date: January 31,2026, Purpose: Perform the correlation test for assignment

library("ggpubr")

#loading data for testing 

my_data <- read.csv("C:/Users/ricar/OneDrive - Claflin University/Desktop/02-10-2020_1930.csv")

# applying function
result <- cor.test(my_data$Confirmed, my_data$Deaths, method = "pearson")

# get data
result


#Pearson's product-moment correlation

data:  my_data$Confirmed and my_data$Deaths
t = 119.11, df = 70, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.9960631 0.9984661
sample estimates:
      cor 
0.9975423 

#Ploting the result
ggscatter(my_data, x = "Deaths", y = "Confirmed", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Deaths", ylab = "Confirmed")

