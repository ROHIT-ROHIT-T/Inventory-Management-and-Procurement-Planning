library(forecast)
library(fpp2)
library(ggplot2)
library(expsmooth)
library(fma)
library(readxl)

data = read_excel('C:\\Users\\rohit\\OneDrive\\Desktop\\PROJECT\\DENTEQP018XXX\\data.xlsx')
DENTEQP018XXX = ts(data$Demand,start=c(2017,4),frequency=12)

autoplot(DENTEQP018XXX,xlab = 'Year')


hw.mult.damp = hw(DENTEQP018XXX,seasonal="multiplicative",damped=TRUE,h=12)
autoplot(hw.mult.damp)


summary(hw.mult.damp)

accuracy(hw.mult.damp)

