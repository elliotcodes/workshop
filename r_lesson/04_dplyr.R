gapminder = read.csv("gapminder.csv")

install.packages("dplyr")
library(dplyr)

glimpse(gapminder)

# select
select(gapminder, year)
select(gapminder, year, lifeExp, country)
select(gapminder, -year)

# filter
filter(gapminder, continent == "Asia")
filter(gapminder, continent != "Oceania")
filter(gapminder, year > 2000)

two_countries <- c("Albania", "Dominican Republic")
two_countries

filter(gapminder, country %in% two_countries)

# piping
min(gapminder[, 'lifeExp'])
gapminder %>% select(lifeExp) %>% min()

x1 <- 1:5
x2 <- 2:6
(x1-x2)^2 %>% sum() %>% sqrt()

gapminder %>% select(-pop, -gdpPercap) %>% 
  filter(continent == "Asia" | continent == "Oceania")

# mutate
mean_lifeExp_gapminder
gapminder %>% mutate(NewColumn = lifeExp - mean_lifeExp_gapminder)

gapminder <- gapminder %>%mutate(NewColumn = lifeExp - mean_lifeExp_gapminder)
glimpse(gapminder)

select(gapminder, -NewColumn)

# exercise
glimpse(gapminder)

gapminder %>% select(lifeExp, country, year) %>% filter(country == "")

gapminder %>% 
  filter(gapminder, continent == "Africa") %>% 
  select(country, lifeExp, year) %>% 
  glimpse()


glimpse(gapminder)

gapminder$continent <- as.character(gapminder$continent)

# group_by

gapminder %>% 
  group_by(continent)

# summarize

gapminder %>% 
  group_by(continent) %>% 
  summarize(MeanLife=mean(lifeExp))

gapminder %>% 
  group_by(continent, year) %>% 
  summarise(MeanLife=mean(lifeExp), SeLife = sd(lifeExp)/sqrt(n()))


sd()/sqrt(n())


gapminder %>% 
  group_by(continent, year) %>% 
  summarise(MeanLife=mean(lifeExp), SeLife = sd(lifeExp)/sqrt(n())) %>% 
  ggplot(mapping = aes(x = year,
                       y = MeanLife,
                       color = continent)) +
  geom_line() +
  geom_errorbar(mapping = aes(ymin = MeanLife - SeLife,
                              ymax = MeanLife + SeLife,
                              width = 0.3))

gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarize(Count = n())

gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarize(n = n()) %>% 
  mutate(count = sum(n),
            proportion = n/count)

# challenge 2

select(gapminder, country, lifeExp)

gapminder %>% 
  select(country, lifeExp) %>% 
  group_by(country) %>% 
  summarize(min_life = min(lifeExp),
            max_life = max(lifeExp))
            

# challenge 3

gapminder %>%
  group_by(country) %>% 
  summarize(MeanLife = mean(lifeExp)) %>% 
  filter(MeanLife == min(MeanLife) | MeanLife == max(MeanLife))

glimpse(gapminder)

# challenge 4
# Make a ggplot scatterplot of the lifeExp vs GDPperCap 
# for the countries whose average life expectancy is lower than average
# Color the graph by continent

mean_lifeExp_gapminder

gapminder %>% 
  group_by(country) %>% 
  summarize(mean_le = mean(lifeExp),
            mean_gdp = mean(gdpPercap),
            continent = unique(continent)) %>% 
  filter(mean_le < mean_lifeExp_gapminder) %>% 
  ggplot(mapping = aes(x = mean_gdp, y = mean_le, color = continent)) + 
  geom_point() + scale_x_log10()

gapminder %>% 
  filter(lifeExp < mean(lifeExp)) %>% 
  group_by(country) %>% 
  ggplot(mapping = aes(x = gdpPercap, y=lifeExp, color=continent)) +
  geom_point()

gapminder %>% 
  select(country, gdpPercap, lifeExp, continent) %>% 
  group_by(continent, country) %>% 
  summarise(MeanLife = mean(lifeExp),
            MeanGDP = mean(gdpPercap)) %>% 
  filter(MeanLife < mean_lifeExp_gapminder) %>% 
  ggplot(mapping = aes(x = MeanGDP, y = MeanLife, color = continent)) + 
  geom_point()
