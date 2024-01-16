library(dplyr)
data(mtcars)
View(mtcars)
mtcars[,c(2,10)]
filter(mtcars , cyl==8)
filter(mtcars , cyl==8 & gear==5 | hp==TRUE)
#select method
sel = select(mtcars,mpg,cyl,gear)
sel
filter(select(mtcars,cyl,gear,mpg), cyl==8)
#arrange
arrange(mtcars,cyl)
arrange(select(mtcars,cyl,gear,mpg), cyl)
arrange(select(mtcars,cyl,gear,mpg),desc(cyl))
?mtcars#help

#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",") sintax
airquality <- datasets::airquality
#View(airquality)

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

######Columns
airquality[,c(1,2)]
#datasets::
df<-airquality[,-6]
df

summary(airquality[,1])

airquality$Wind

summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 
sd(airquality$Wind) #SD standard deviation

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="http://127.0.0.1:40749/graphics/plot_zoom_png?width=701&height=900")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
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

library(moments)
##Home work
e_quakes<-datasets::quakes
View(e_quakes)
hist(e_quakes$depth, main = "Histogram of Earthquake depth", xlab = "DEPTH", col = "skyblue", border = "black")
help.search('skewness')
skew_value <- skewness(e_quakes)
print(skew_value)
View(skew_value)

skewness(e_quakes$mag ,na.rm = TRUE)

sd(airquality$Ozone,na.rm = T)

var(e_quakes$mag ,na.rm = TRUE)
skewness(e_quakes$mag ,na.rm = TRUE)
kurtosis(e_quakes$mag ,na.rm = TRUE)

library(dplyr)







