#using assignment operators
day <- 3
month = 10

#using arithmetic operators
4+2
4-2
4*2
4/2

#using comparison operators
4==3
4!=3
4>3
4<3

#using logical operators
c(TRUE,TRUE,FALSE) & c(TRUE,FALSE,FALSE)

#creating vectors
chris_vector <- c('pratt','hemsworth')
chris_age_vector <- c(44,46,42,45)

#executing functions on vectors
length(chris_age_vector)
str(chris_age_vector)
typeof(chris_vector)

#adding values to vectors
chris_vector <-c(chris_vector, "pine")
chris_vector <-c("evans",chris_vector)

name_age_vector <- c("evans", 44, "pratt", 46)
str(name_age_vector)

#calling dataframes
data(iris)

#functions - calculating the mean and SD of chris_age_vector
mean(chris_age_vector)
sd(chris_age_vector)

#installing a package
install.packages('tidyverse')

##calling a package
library(tidyverse)


chris_age_vector <- c(NA, chris_age_vector)
mean(chris_age_vector)
mean(chris_age_vector, na.rm=TRUE)


select(unmessy_movies, movie_title, year, runtime, primary_genre)
select(unmessy_movies, movie_title:primary_genre)

filter(unmessy_movies, primary_genre=="Music")
filter(unmessy_movies, primary_genre=="Action",
       runtime < 60)

filter(unmessy_movies, primary_genre=='Animation', year<1990)

#using pipes
unmessy_movies %>%
  filter(primary_genre=="Sci-Fi") %>%
  select(movie_title, director_name, director_id)

scifi_movies <- unmessy_movies %>%
  filter(primary_genre=="Sci-Fi") %>%
  select(movie_title, director_name, director_id)

action_movies <- unmessy_movies %>%
  filter(primary_genre=="Action") %>%
  select(movie_title, year, ave_rating)

#Mutating
original_unmessy_movies %>%
  mutate(writers_id = strsplit(writers_id,",")) %>%
  mutate(num_writers = lengths(writers_id))

#split-apply-combine analysis
unmessy_movies %>%
  group_by(primary_genre) %>%
  summarize(mean_rating = mean(ave_rating))%>%
  ungroup()

unmessy_movies %>%
  group_by(primary_genre) %>%
  summarize(mean_rating = mean(ave_rating))%>%
  arrange(mean_rating)%>%
  ungroup()

genre_ratings <- unmessy_movies %>%
  group_by(primary_genre) %>%
  summarize(mean_rating = mean(ave_rating))%>%
  arrange(desc(mean_rating))%>%
  ungroup()

# counting 
unmessy_movies %>% 
  count(year)

unmessy_movies %>% 
  count(year, sort=TRUE)



unmessy_movies %>%
  ggplot(aes(x=runtime, y=ave_rating) + geom_point(color="primary_genre"))
