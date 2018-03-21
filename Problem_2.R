#a)
xmin <- c(23, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25.0,22.8,31.2,27.3,28.4,20.2,24.1)

xmin
xmax

#b)
dif <- xmax-xmin

dif

#c)
avg_min <- mean(xmin)
avg_max <- mean(xmax)

avg_min
avg_max

#d)
xmin [xmin < avg_min]

#e)
xmin [xmax > avg_max]

#f)
names(xmin) <- c('Mon','Tue', 'Wed', 'Thu','Fri', 'Sat', 'Sun')
names(xmax) <- c('Mon','Tue', 'Wed', 'Thu','Fri', 'Sat', 'Sun')

xmin
xmax

#g)
temperature <- data.frame(xmin, xmax)

temperature

#h)
temperature <- within(temperature, {xminFahrenheit <- xmin*9/5 +32})

temperature

#i)
tempinF <- data.frame(Min_Temp_F <- xmin*9/5 + 32,
                      Max_Temp_F <- xmax*9/5 + 32)

tempinF

#j)
MonFri_tempsinF <- data.frame(
  Max_Temp_F <- xmax[seq(1:5)]*9/5 + 32,
  Min_Temp_F <- xmin[seq(1:5)]*9/5 + 32)

MonFri_tempsinF

MonFri_tempsinF <- data.frame(
  Max_Temp_F <- xmax[seq(length(xmax)-2)]*9/5 + 32,
  Min_Temp_F <- xmin[seq(lenght(xmin)-2)]*9/5 + 32
)
MonFri_tempsinF

#for some reason, the columns in the data frame would not display with the correct names, 
#I am not sure why.