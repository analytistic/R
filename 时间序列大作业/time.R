library(prophet)
df <- read.csv("C:/Users/lenovo/Desktop/机器学习/protime/protime.txt")
m <- prophet(df)
future <- make_future_dataframe(m, periods = 365)
tail(future)
forecast <- predict(m, future)
tail(forecast[c('ds', 'yhat', 'yhat_lower', 'yhat_upper')])
plot(m, forecast)
library(TSA)
acf(df)
plot(df)
y=df$y
acf(y)
plot(y)
plot(as.vector(diff(y,lag=1)))
diff(y)
plot(diff(y))
acf(as.vector(diff(diff(y),lag=30)),ci.type='ma',lag.max = 60)

 

y=df$y
y=ts(y, start=c(2007,12,10), frequency=1)
plot(y)
acf(y)
plot(diff(y))
acf(as.vector(y),lag.max =1000)
data(AirPassengers)
y=AirPassengers
data(co2)
acf(as.vector(AirPassengers),lag.max = 300)
acf(as.vector(diff(diff(AirPassengers),lag=18),ag.max = 100)
h

    