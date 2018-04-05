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

## NOTE: not DRY (don't repeat yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin) <- c('Mon','Tue', 'Wed', 'Thu','Fri', 'Sat', 'Sun')
names(xmax) <- c('Mon','Tue', 'Wed', 'Thu','Fri', 'Sat', 'Sun')

xmin
xmax

#g)
temperature <- data.frame(xmin, xmax)

temperature

#h)
temperature <- within(temperature, {
	xminFahrenheit <- xmin*9/5 +32
})

temperature

#i)
## NOTE: DO NOT USE '<-' for assigning to function arguments.
## User '=' instead.
## Examine the column names of your data frame to
## see that it does not do what you expect.
## Also examine the values of Min_Temp_F and Max_Temp_F
## in the global environment to see that you 
## have created NEW variables there.

tempinF <- data.frame(Min_Temp_F <- xmin*9/5 + 32,
                      Max_Temp_F <- xmax*9/5 + 32)

tempinF

#j)
MonFri_tempsinF <- data.frame(
  Max_Temp_F <- xmax[seq(1:5)]*9/5 + 32,
  Min_Temp_F <- xmin[seq(1:5)]*9/5 + 32)

MonFri_tempsinF

## This is not exclusion.
MonFri_tempsinF <- data.frame(
  Max_Temp_F <- xmax[seq(length(xmax)-2)]*9/5 + 32,
  Min_Temp_F <- xmin[seq(lenght(xmin)-2)]*9/5 + 32
)
MonFri_tempsinF

#for some reason, the columns in the data frame would not display with the correct names, 
#I am not sure why.

## See comment under i)

## Better:

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]

