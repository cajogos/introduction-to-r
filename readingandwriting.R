d <- data.frame(read.table(file="tst1.txt", header=TRUE))

d$g <- d$g* 5

write.table(d, file="tst2.txt", row.names=FALSE)

d2 <- data.frame(read.table(file="tst2.txt", header=TRUE))
d2