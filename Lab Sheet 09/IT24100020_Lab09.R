getwd
setwd("C:\\Users\\pooja\\Desktop\\PS\\IT24100020_Lab_9")
getwd()
data <- rnorm(25, mean = 45, sd = 2)
data

result <- t.test(data, mu = 46, alternative = "less")


result
