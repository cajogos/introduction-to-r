yval = seq(from=1, to=120, by=7)
length(yval)

xval = rnorm(length(yval), mean=20, sd=3)

plot(x=xval, y=yval, type ="o", col=rainbow(10))
