library(ggplot2)
library(gapminder)

#aesthetics must be mapped to variables, not descriptions
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) + 
  geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, size = pop, col = continent)) + 
  geom_point(alpha = 0.3)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(aes(size = pop, col = continent), alpha = 0.3)

p <- ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))
p + geom_point(alpha = 0.3) + geom_smooth(method = "loess")
p + geom_point(aes(size = pop, col = continent), alpha = 0.3) + 
  geom_smooth(method = "loess")

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, size = pop, col = continent)) + 
  geom_point(alpha = 0.3) + 
  geom_smooth(method = "loess")

#some geoms only accept a subset of mappings
#for exapmle, geom_density can't have a global y aes mapping
p + geom_density() #will have an error
ggplot(data = gapminder) + 
  geom_density(aes(x = gdpPercap, fill = continent), alpha = 0.3) #solution
