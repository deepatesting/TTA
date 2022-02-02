## Homelearning Task - Data visualization

###1. mpg dataset

data()
data(package=.packages(all.available=TRUE))

#library(tidyverse)
mpg

#displ on the x-axis and hwy on the y-axis:
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#adding colour to data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#changing size of data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#aplha changes transparency of points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#changing data points shape
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))


#bar chart
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", width=0.5)

# Change colors
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", color="blue", fill="white")

# Minimal theme + blue fill color
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()

?msleep
?mpg

###2. economics dataset
data(economics)
?economics
economics

ggplot(data=economics, aes(x=date, y=pop)) 
+ geom_line()  

# Change the y-axis to the proportion of the population that is unemployed
ggplot(economics, aes(date, unemploy / pop)) +
  geom_line()

#adding colour to data points
ggplot(data=economics) + 
  geom_point(mapping = aes(x = date, y = unemploy, color=pop))

ggplot(data=economics,aes(x = date, y = unemploy)) + 
  geom_path(size = 0.8)

# plot personal savings rate (psavert).
ggplot(economics, aes(x = date, y = psavert)) +
  geom_line() +
  labs(title = "Personal Savings Rate",
       x = "Date",
       y = "Personal Savings Rate")

# basic area chart
ggplot(economics, aes(x = date, y = psavert)) +
  geom_area(fill="lightblue", color="black") +
  labs(title = "Personal Savings Rate",
       x = "Date",
       y = "Personal Savings Rate")  


