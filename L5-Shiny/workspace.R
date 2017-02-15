require(shiny)
require(ggplot2)
require(dplyr)
require(HSAUR)

data <- womensrole

data.male <- filter(data, sex == "Male")
data.female <- filter(data, sex == "Female")

ggplot() + geom_point(data = data.male, aes(x = education, y = agree/disagree), color = 'blue') + 
  geom_point(data = data.female, aes(x = education, y = agree/disagree), color = 'red')