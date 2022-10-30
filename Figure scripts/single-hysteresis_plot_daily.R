setwd("C:/Hysteresis plots")
#read in daily gw level data
gw1 <- read.csv(file.path("C:/Hysteresis plots/Hourly groundwater levels", "OW309-daily.csv"))
gw1$level <- gw1$level*-1
#read in daily streamflow data
str1 <- read.csv(file.path("C:/Hysteresis plots/Daily streamflow", "08NA002_daily.csv"))
#define x and y labels
wlabel <- "OW309"
qlabel <- "08NA002"
#choose 3 years for analysis
years <-c(2014, 2015, 2016)
#hysteresis plot function
x <- str1
y <- gw1
xlabel <- expression(paste("Discharge (m" ^{3}, "/s)"))
ylabel <- paste("Groundwater Level (m)" )
msym <- c( 15, 2, 22, 4, 8, 6, 21, 3, 17, 18, 5, 20 )

mtitle <- paste(wlabel,"/",qlabel)

# combine two datafram
mdata <- merge (x,y,by=c("date","date"))
mdata$yr <-as.numeric(substr(mdata$date,start = 1, stop = 4))
mdata$mo <-as.numeric(substr(mdata$date,start = 6, stop = 7))
xlims <- c(min(mdata$discharge),max(mdata$discharge))
ylims <- c(max(mdata$level),min(mdata$level))
par(mfrow=c(3,3))  ## needs to have sufficent size for plots plus 2 legends
par(mar=c(4,4,2,1))

##################  generate the plot  
k <-1
ndata <-mdata[mdata$yr==years[k],]
print(paste("For",years[k],"observations=",length(ndata[,1])))


plot(ndata[,2],ndata[,3], main=mtitle, xlab=xlabel, ylab=ylabel, 
     pch=msym[ndata$mo], col=k, typ='b', las=1,
     xlim=xlims, ylim=ylims, log="x")

for( k in 2:length(years)) {
  ndata <-mdata[mdata$yr==years[k],]
  print(paste("For",years[k],"observations=",length(ndata[,1])))
  
  points(ndata[,2],ndata[,3],
         pch=msym[ndata$mo], col=k, typ='b')
}
msym <- c( 15, 2, 22, 4,8 , 6,21 , 3, 17, 18,5,20 )
months <- c(1:12)

plot.new()
legend("left", legend=months,title="Months", pch=msym, ncol=4,
       bty="n")

plot.new()
legend("center", legend=years, title="Years",col=c(1:length(years)), pch=15,bty="n")

