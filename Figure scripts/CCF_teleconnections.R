#change this pathway to wherever your files are
setwd('C:/Reconstruction Analysis')

#install the package that allows you to use ccf2
#(you only need to do this once at the beginning of your R session)
install.packages("astsa")
library("astsa")

#read in your two time series
#the two time series should be the same length
#so they must have the same resolution (monthly, daily, etc) and the same period of record
#the csv file should have only 1 column with your values (groundwater levels, streamflow, etc)- no dates needed
#this makes 2 vectors that have 1 column each
x<- read.csv("barkerville_reconstr.csv")
setwd('C:/Reconstruction Analysis/PNA')
pna<- read.csv("trouet2009_winterPNA.csv")

x<-x[1:149,]

xPNA<- x[, 2]
yPNA<-pna[126:275, 2]

#cross correlation plot
#using ccf2 will pass over missing values if you set the na.action to equal na.pass
#you can play around with the maximum lag- even try doing a plot without that argument
#to see how it cuts off your plot!
ccf <- (ccf2(xPNA, yPNA, main="Cross correlation CBCI reconstruction with Trouet2009 PNA Reconstruction", max.lag = 15, ylab="CCF", na.action = na.pass))
