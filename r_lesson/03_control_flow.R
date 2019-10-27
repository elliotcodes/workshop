for (my_var in 1:10){
  print(my_var)
}

paste ("I am a", 5)

for(i in 1:3){
  for(j in letters [1:3]){
    print(paste(i, j))
  }
}

c <-c()
c
for (i in 1:5){
  c <- c(c,i^2)
  print(c)
}

# "x continent has a life expectancy between _ and _"

unique(gapminder$continent)

for (cont in unique(gapminder$continent)){
  min_life <- min(gapminder[gapminder$continent == cont, 'lifeExp'])
  max_life <- min(gapminder[gapminder$continent == cont, 'lifeExp'])
  print(paste(cont, 
              "has a life expectancy between", 
              min_life, 
              "and", 
              max_life,))
}

print(paste(cont, "has a life expectancy between", min_life, "and", max_life))

for (cont in unique(gapminder$continent)){
  mean_life <- mean(gapminder[gapminder$continent, 'lifeExp'])
}


for (cont in unique(gapminder$continent)){
  mean_life <- mean(gapminder[gapminder$continent == cont, 'lifeExp'])
  print(paste(cont, 
              "has a mean life expectancy of", 
              mean_life))
}

# conditionals

x <- 5
if(x > 0){
  print("positive number")
}

if(x > 0){
  print("positive number")
} else{
  print('negative number')
}

x <- 0


x <- 3
if (x == 3){
  print('Three!')
} else if(x < 0 ){
  print("negative number")
} else if(x > 0){
  print('positive number')
}

x <- 3
if (x > 0){
  print('positive number')
} else if(x < 0 ){
  print("negative number")
} else if(x > 0){
  print('positive number')
}

# loops and conditional statements together

for(i in c(-1, 3, 0, 07)){
  if (i > 0){
    print("positive number")
  } else if (i < 0){
    print("negative number")
  } else {
    print('zero')
  }
}

# gapminder with loops and conditional statements
mean_lifeExp_gapminder <- mean(gapminder$lifeExp)

summary(gapminder)

colnames(gapminder)

for(cont in unique(gapminder$continent)){
  if (mean(gapminder[gapminder$continent == cont, 'lifeExp']) > mean_lifeExp_gapminder){
    print(paste(cont, 'has mean life expectancy greater than overall mean life exp'))
  }
}

summary(gapminder$gdpPercap)

summary(gapminder[gapminder$year == 2007,]$gdpPercap)

first <- 1624.8
mid <- 6124.4
third <- 18008.8

for (country in unique(gapminder$country)){
  country_gdp <- gapminder[gapminder$country == country & gapminder$year == 2007,
                           "gdpPercap"]
  if(country_gdp <= first){
    print(paste(country, "has a gdp at or below the first quartile"))
  } else if (country_gdp == mid){
    print(paste(country, "has a gdp at the median"))
  } else if (country_gdp >= third){
    print(paste(country, "has a gdp at or above the third quartile"))
  }
}

