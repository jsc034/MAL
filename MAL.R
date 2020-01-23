#Last Updated 1/15/20
#Playing with XML file export from MAL
setwd("/Users/Joshua/Downloads")
#setwd("~/Downloads")
#getwd()
set.seed(1)
#install.packages("xlsx")
options(scipen=999) #disables scientific notation in plots

#Step 1
#Export list in MAL - output will be a XML file

#Step 2
#Open up the downloaded XML file in Excel. Save as .xlsx file. Delete first row (/myanimelist)

library(readxl)
file_name <- 'MAL.xlsx'
DF0 <- read_excel(file_name)

#Filtering Dataset

#Removing extra Columns
columns <- c(12,15,20,22,24,26,27)
DF <- DF0[,columns]

#Only looking at entries that have been scored
index <- which(DF0$'/anime/my_score'>0)
DFA <- DF[index,]

#---------------------------------------------------------------------------------------------------------








