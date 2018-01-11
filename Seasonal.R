install.packages('ggplot2')
library(ggplot)



demo(seas)
m <- seas(AirPassengers)

data<-AirPassengers

RPI_UK<-read.text("C:\Users\mgolatowski\Desktop\RPI.txt")
getwd()

data<-read.table("RPI2.txt")

matrix(data)
print(data)

data<-ts(data)
data

format()



seas(data)

install.packages("ts")
library(ts)

help(ts)



require(graphics)

RPI_UK<-ts(data[,3], frequency = 12, start = c(1987, 1))


m<-seas(RPI_UK)

final(m)

plot(m)
plot(RPI_UK)

summary(m)
static(m)
out(m)
monthplot(m)

series(m, "forecast.forecasts")

sum(coef(m))

fore<-series(m, "forecast.forecasts")
plot(fore[1:10,])

plot(RPI_UK, plot.type = "single", lty = 1:3)

RPI_UK[1:12]

l<-length(RPI_UK)/12

plot(RPI_UK[336:l],plot.type = "single", lty = 1:3)
plot(final(m)[312:l],plot.type = "single", lty = 1:3)

sum(final(m)[336:l]/RPI_UK[336:l])
final(m)[336:l]/RPI_UK[336:l]


final(m)[337]/final(m)[336]
final(m)[337]-final(m)[336]
final(m)[337:l]-final(m)[3
                         
                         
vec<-final(m)[336:348]

sum(diff(vec))

final(m)[337:l]-final(m)[336:l-1]


sum(vec[2:13]-vec[1:12])
prod(vec[2:13]/vec[1:12])

forecast<-series(m, "forecast.forecasts")[1:13]

sum(forecast[2:13]-forecast[1:12])
prod(forecast[2:13]/forecast[1:12])

for2<-forecast[2:13]/forecast[1:12]

plot(for2)
plot(forecast[1:12]*for2)




                  