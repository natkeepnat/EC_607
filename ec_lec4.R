library(tidyverse)

#in command
4 %in% 1:10

#how to create a not in command
`%ni%` <- negate(`%in%`)
4 %ni% 5:10

df <- data.frame(x = 1:2, y = 3:4)
df
mat <- as.matrix(df)
mat
class(df)
typeof(df)
str(df)
view(df)

#run a simple regression on df
lm(y ~ x, data = df)

df2 <- data.frame(x = rnorm(10), y = runif(10))
df2

my_vec <- c(1, 2, 5)
my_vec

rnorm(n = 100, mean = 0, sd = 1)

a <- 1:10
a[4]
a[c(4, 6)]
starwars[1, 1]
starwars[1:3, 1]

my_list <- list(a="hello", b=c(1,2,3), c=data.frame(x=1:5, y=6:10))
#returns 1st list object
my_list[[1]]
#returns 3rd element of the 2nd list object
my_list[[2]][3]
my_list

my_list$a
my_list$b[3]
my_list$c$x
my_list$c$x[2]

starwars$name[1]
starwars$name

lm(df$y ~ df$x)

a <- "hello"
b <- "world"
rm(a, b)

#remove all plots generated
plot(1:10)
dev.off()
