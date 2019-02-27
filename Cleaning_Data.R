# Coursera and Johns Hopkins University
# Data Science Specialization
# Course04 : Exploratory Data Analysis
# Project01 : ExData_Plotting1
# 2019-02-27

data_raw <- read.table(file="household_power_consumption.txt",head=TRUE,sep=";",colClasses=c("character","character","character","character","character","character","character","character","character"))
# only be using data from the dates 2007-02-01 and 2007-02-02.
data_part <- subset(data_raw, Date=="1/2/2007" | Date=="2/2/2007")
# missing values are coded as ?.
data <- data_part[!apply(data_part, 1, function(x) {any(x == "?")}),]

data$Date<-as.Date(data$Date,"%d/%m/%Y")
data$Time <- chron(times=data$Time)
data$Global_active_power<-as.numeric(data$Global_active_power) 
data$Global_reactive_power<-as.numeric(data$Global_reactive_power) 
data$Voltage<-as.numeric(data$Voltage) 
data$Global_intensity<-as.numeric(data$Global_intensity)
data$Sub_metering_1<-as.numeric(data$Sub_metering_1)
data$Sub_metering_2<-as.numeric(data$Sub_metering_2)
data$Sub_metering_3<-as.numeric(data$Sub_metering_3)

assign("data", data, envir = .GlobalEnv)
# head(data)

source("plot1.R")
plot1(data)

source("plot2.R")
plot2(data)

source("plot3.R")
plot3(data)

source("plot4.R")
plot4(data)








