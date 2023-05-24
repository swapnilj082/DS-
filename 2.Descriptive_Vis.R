
ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary = c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)
# In doTryCatch(return(expr), name, parentenv, handler) :
# invalid graphics state - Solution to this warning:

plot(ages,salary)
plot(salary,ages)

help(plot)
############################################



#airquality = read.csv('path/airquality.csv),header=
#Click on Import Ddataset

airquality = datasets::airquality

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
names(airquality) #names of all columns

# To see entire dataset click on aiequality data set name from workplace
#######Columns
airquality[,c(1,2)] #all rows and first two columns

df = airquality[-6] #excludes column n0 6
df

summary(airquality[,1]) # summary statistics for column

summary(airquality$Temp)


airquality$Wind # display column values

summary(airquality$Wind)# summery of wind column


###############Summery of the data################
summary(airquality)

###########Visualization
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality) #scatterplot
help(plot)

#points and lines
plot(airquality$Wind, type = "p")
plot(airquality$Wind, type = "l")
plot(airquality$Wind, type = "b")
help(plot)

plot(airquality$Wind,
     xlab = 'Ozone Concentration',
     ylab = 'no of Instances',
     main = 'Ozone levels in NY city',
     col = 'red',
     type = 'l')

plot(airquality,col='red')# plot of entire dataset-allcolumns

plot(airquality$Ozone,airquality$Solar.R) # x axis - Ozone,
plot(airquality$Solar.R,airquality$Ozone) #x - solar.r,y


#Horizontal bar plot
barplot(airquality$Ozone,
        main = 'Ozone Concentrationin air',
        ylab = 'ozone levels',
        col = 'blue',
        horiz = F,
        axes = F)
help(barplot)

#Histogram

hist(airquality$Temp)

hist(airquality$Temp,
     main = 'SolarRadiation values in air',
     xlab = 'SOLAR rad.',
     col = 'blue',
     border = 'red')

help(hist)

#Single box plot
help(boxplot)

boxplot(airquality$Wind,
        main="Boxplot",
        col = "blue",
        border = 'red',
        horizontal = T)

boxplot.stats(airquality$Wind)$out #outlier values

airquality$Ozone


#Multiple box plots
boxplot(airquality[,1:4],
        main='multiple Box plots',
        horizontal = FALSE,
        col = 'pink')
airquality$Ozone



#margin of the grid(mar)(bottom,left,top,right), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o,n,7,L,C,U)
help(par)
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

# Considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
mean(airquality$Solar.R)
mean(airquality$Solar.R,na.rm=T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm=T)

# Google following functions as variance in R, etc
#var
#skewness
#kurtosis
#Density plot


var(airquality$Wind)
sd(airquality$Ozone)#,na.rm = T) Standard Deviation # because of NA values in ozone col - No o/p
sd(airquality$Ozone, na.rm = T)

skewness(airquality$Ozone) #error
kurtosis(airquality$Ozone) #error

# Installing Packages

# when function is not available you have to install some packages/libraries.
# eg. mobile has some in built apps 
# - others download scanner, whatsapp, photo editor from play store
# which library to download for skewness
#google - skewness and kurtosis in r
# go to rbloggers.com
# library(moments)
# or go to rdocumentation.r
# type skewness - you will get the name of package as 'moments'
# go to rstudio
# click on packages in 3rd window - bottom right corner - Click on install
# type moments in packages, click checkbox - install dependencies - click install
# After installation, in search - search for installed 'moments', click that checkbox

# Or try: install.packages("moments")

skewness(airquality$Ozone,na.rm=T) 
kurtosis(airquality$Ozone,na.rm=T) 


# Density Plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm=T))


## In Class Exercise
e_quakes<-datasets::quakes


#var

var(e_quakes$mag)

#skewness

skewness(e_quakes$mag) 


skewness(e_quakes$mag)

mean(e_quakes$mag)

#kurtosis

kurtosis(e_quakes$mag)

#Considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
mean(airquality$Solar.R)

mean(airquality$Solar.R,na.rm=T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm=T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm = T)





# HOME WORK
# iris_data<-datasets::iris
# perform all steps on iris dataset that you have performed on airquality and quakes dataset


# to import xml files in R, first install XML package
# 
install.packages("XML")

