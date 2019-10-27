3+2
4/2
2*(4+2)
4*2
#Data Type
#NUMBER TYPE
3
2.4
4.666
class(3)
3L
class(3L)
as.integer(3)
class(as.integer(3))
3+1i
class(3+1i)
'dog'
'plant'
class(dog)
class('dog')
TRUE
FALSE
"character"
300 > 200
3 == 3L
FALSE == FALSE
10-5 == sqrt(25)
TRUE > FALSE
'a' > 'b'
my_var = 'tucson'
dog
dog <- 3
dog
cat <- 2
cat
.day <- 1
.day
min_height
max.height
_age
x <- 3
x
y <- 2
y
y <- 17.4
y
x+y
1:10
num_vect <- 1:10
num_vect
logic_vector <- c(TRUE, TRUE, FALSE, TRUE)
logic_vector
char_vector <- c('Matt', 'Asher', 'Sarah')
char_vector
class(logic_vector)
class(num_vect)
class(char_vector)
my_list
m <- matrix(nrow=2, ncol=3)
m
?matrix
m <- matrix(1:6, nrow=2, ncol=3)
m
m <- matrix(1:6, nrow=2, ncol=3 byrow = TRUE)
m <- matrix(1:6, nrow=2, ncol=3, byrow = TRUE)
m
df <- data.frame(id=letters[1:10], x=1:10, y=11:20)
df
class(df)
class(m)
nrow(df)
ncol(df)
dim(df)
str(df)
names(df)
fact <- c(rep(1,4), rep (2,3), rep (3,5))
fact
head(df)
tail(df)
factor(fact)
summary(df)
cats <- data.frame(coat = c("calico", "black", "tabby"),
                             weight = c(2.1, 5.0, 3.2),
                             likes_string = c(1,0,1))
cats
getwd()
cats
cats2 <- read.csv(file="cats_data.csv")
cats2
cats$coat
cats$weight
cats$weight+2
age <- c(3,4,5)
cbind(cats,age)
gapminder <- read.csv(file = "gapminder.csv")
gapminder
str(gapminder)
head(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
summary(gapminder)
colnames(gapminder)
str(gapminder)
summary(gapminder)
colnames(gapminder)
dim(gapminder)
gapminder[1,1]
gapminder[1:5,6]
gapminder[20:22,3:6]
gapminder[-3:-1704,]
gapminder[-3:-1704,]
gapminder[-3:-1704,-3:-4]
gapminder[, 'lifeExp']
head(gapminder[, 'lifeExp'])
head(gapminder[, c('lifeExp', 'pop')])
gapminder[gapminder$year == 1997, ]
gapminder[gapminder$country == 'Gabon', ]
gapminder[gapminder$country == 'Gabon', c(4,6)]
