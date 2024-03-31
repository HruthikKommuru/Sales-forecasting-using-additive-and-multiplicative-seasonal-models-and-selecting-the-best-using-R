########B###########
sales <- read.csv("/Users/hruthikkommuru/Desktop/predective Modeling/Prof Kamalesh/Module-4/HW-2/HW2_CSV.csv")
View(sales)
manufacturing.sales <- sales$Xt
manufacturing.sales

#Definie Sales series as time series
salesseries <- ts(manufacturing.sales,frequency=12,start = c(2015,1))
salesseries
plot.ts(salesseries)
#additive trend seasonal (AAA)
install.packages("forecast")
library(forecast)
salesforecasts <- ets(salesseries, model = 'AAA',alpha = 0.2, beta = 0.1, gamma = 0.1, damped = F)
salesforecasts
salesforecasts$fitted
plot(salesforecasts)
accuracy(salesforecasts)
residuals(salesforecasts)
summary(salesforecasts)
coef(salesforecasts)
forecast(salesforecasts, level=0.95, h=12)

##########C###########

salesseries <- ts(manufacturing.sales,frequency=12,start = c(2015,1))
salesseries
plot.ts(salesseries)
#Multiplicative trend seasonal (MAM)
library(forecast)
salesforecasts <- ets(salesseries, model = 'MAM',alpha = 0.2, beta = 0.1, gamma = 0.1, damped = F)
salesforecasts
salesforecasts$fitted
plot(salesforecasts)
accuracy(salesforecasts)
residuals(salesforecasts)
summary(salesforecasts)
forecast(salesforecasts, level=0.95, h=12)

#########D############

salesforecasts <- ets(salesseries, model = 'AAA',lower = c(0.1,0.1,0.1, 0.1), upper = c(0.5,0.5,0.5, 0.5), damped = F)
salesforecasts
salesforecasts$fitted
plot(salesforecasts)
accuracy(salesforecasts)
residuals(salesforecasts)
plot(residuals(salesforecasts))
summary(salesforecasts)
coef(salesforecasts)
forecast(salesforecasts, level=0.95, h=12)


salesforecasts <- ets(salesseries, model = 'MAM',lower = c(0.1,0.1,0.1, 0.1), upper = c(0.5,0.5,0.5, 0.5), damped = F)
salesforecasts
salesforecasts$fitted
plot(salesforecasts)
accuracy(salesforecasts)
residuals(salesforecasts)
summary(salesforecasts)
coef(salesforecasts)
forecast(salesforecasts, level=0.95, h=12)



