
# generating test data



a <- rnorm(1000, mean=10, sd=2)
b <- rnorm(1000, mean=100, sd=10)
c <- rnorm(1000, mean=0, sd=2)
d <- rnorm(1000, mean=7, sd=3)
e <- rnorm(1000, mean=25, sd=2)


y <- 2*a + 4*b - 3*c + 0.5*d + e + rnorm(1000)


dat <- as.data.frame(cbind(y, a, b, c, d, e))

write.csv2(dat, "test_data.csv", row.names = FALSE)
