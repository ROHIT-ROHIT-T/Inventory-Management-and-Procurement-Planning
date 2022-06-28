library(forecast)
library(fpp2)
library(ggplot2)
library(expsmooth)
library(fma)
library(readxl)


data = read_excel('C:\\Users\\rohit\\OneDrive\\Desktop\\PROJECT\\DENTEQP023XXX\\data.xlsx')
DENTEQP023XXX = ts(data$DEMAND,start=c(2017,4),frequency=12)
autoplot(DENTEQP023XXX,xlab = 'Year')


hw.mult.damp = hw(DENTEQP023XXX,seasonal="multiplicative",damped=TRUE,h=12)
autoplot(hw.mult.damp)


summary(hw.mult.damp)

accuracy(hw.mult.damp)
