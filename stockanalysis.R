Boeing = read.csv("BoeingStock.csv")
CocaCola = read.csv("CocaColaStock.csv")
GE = read.csv("GEStock.csv")
IBM = read.csv("IBMStock.csv")
ProcterGamble = read.csv("ProcterGambleStock.csv")


Boeing$Date = as.character(Boeing$Date)
Boeing$Date = as.Date(Boeing$Date,"%m/%d/%y")

CocaCola$Date = as.character(CocaCola$Date)
CocaCola$Date = as.Date(CocaCola$Date,"%m/%d/%y")

GE$Date = as.character(GE$Date)
GE$Date = as.Date(GE$Date,"%m/%d/%y")

IBM$Date = as.character(IBM$Date)
IBM$Date = as.Date(IBM$Date,"%m/%d/%y")

ProcterGamble$Date = as.character(ProcterGamble$Date)
ProcterGamble$Date = as.Date(ProcterGamble$Date,"%m/%d/%y")

#how many observation in each dataset: USE (str)
str(Boeing)

# What dates are the observations for?
summary(Boeing)
summary(CocaCola)
summary(GE)
summary(IBM)
summary(ProcterGamble)

sd(ProcterGamble$StockPrice)
var(ProcterGamble$StockPrice)
# generating plot
plot(CocaCola$Date, CocaCola$StockPrice, type = "l")
#blue color plot
plot(CocaCola$Date, CocaCola$StockPrice, type = "l", col="blue")

# create line chart

lines(ProcterGamble$Date, ProcterGamble$StockPrice, type = "l", col="red")

abline(v=as.Date(c("2004-05-01")), lwd=2,col="darkgreen")
abline(v=as.Date(c("1986-05-01")), lwd=2,col="darkgreen")

#visualizing stock dynamics 1995-2005
plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type = "l", col="red", ylim=c(0,210))
plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type = "l", col="red", ylim=c(40,100))

# which stock crashed during dotcom crisis
plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type = "l", col="red", ylim=c(0,210))
lines(ProcterGamble$Date[301:432], ProcterGamble$StockPrice[301:432], col="blue")
lines(IBM$Date[301:432], IBM$StockPrice[301:432], col="green")
lines(GE$Date[301:432], GE$StockPrice[301:432], col="purple")
lines(Boeing$Date[301:432], Boeing$StockPrice[301:432], col="orange")

abline(v=as.Date("2003-03-01"), lwd=2)

# which stock crashed most during 2000
plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type = "l", col="red", ylim=c(0,210),
     main ="Plots for between 1995-2005", sub = "Stock Analysis By Year",
     xlab="Year", ylab="Stock Price")

plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type = "l", col="red", ylim=c(0,210))
lines(ProcterGamble$Date[301:432], ProcterGamble$StockPrice[301:432], col="blue")
lines(IBM$Date[301:432], IBM$StockPrice[301:432], col="green")
lines(GE$Date[301:432], GE$StockPrice[301:432], col="purple")
lines(Boeing$Date[301:432], Boeing$StockPrice[301:432], col="orange")

abline(v=as.Date("2003-03-01"), lwd=2)

# lets see if certain stock up or down during certain months

tapply(IBM$StockPrice, months(IBM$Date), mean)
# Sort the data 
sort(tapply(IBM$StockPrice, months(IBM$Date), mean))
MeanStockPriceByMonth= tapply(IBM$StockPrice, months(IBM$Date), mean)
# sorting all the stocks
sort(tapply(IBM$StockPrice, months(IBM$Date), mean))
sort(tapply(GE$StockPrice, months(GE$Date), mean))
sort(tapply(Boeing$StockPrice, months(Boeing$Date), mean))
sort(tapply(CocaCola$StockPrice, months(CocaCola$Date), mean))
sort(tapply(ProcterGamble$StockPrice, months(ProcterGamble$Date), mean))