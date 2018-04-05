#a)
x <- c(4,1,1,4)

x

#b)
y <- c(1,4)

y

#c) 
x-y

## NOTE: avoid very long lines

# The result of the last line would be "3 -3 0 0".
# The reason for that is because of the difference in 
## the length of the two vectors, 
## because they are subtracted element by element.

## NOTE: Explanation is not clear enough.

#d)
s <- c(x,y)

s

#e)
rep(s,10)
srep <- rep(s,10)
length(srep)

#f)
rep(s, each=3)

#g)
seq(7,21, by=1)
7:21

#h)
seql <- seq(7,21, by=1)
length(seql)
