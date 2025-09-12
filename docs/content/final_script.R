#Vectors
  #creating vectors
chris_vector <- c('pratt','hemsworth')
chris_age_vector <- c(44,46,42,45)

  #inspecting vectors
length(chris_age_vector)
str(chris_age_vector)
typeof(chris_vector)

  #adding elements to vectors 
chris_vector <-c(chris_vector, "pine")
chris_vector <-c("evans",chris_vector)

  #creating a mixed vector & testing coercion
name_age_vector <- c("evans", 44, "pratt", 46)
str(name_age_vector)

#Operators
  #Assignment operators
day <- 3
month = 10

  #Arithmetic operators
4+2
4/2
  
  #Comparison operators
4!=3
4<3

  #Logical operators
c(TRUE,TRUE,FALSE) & c(TRUE,FALSE,FALSE)

#Functions
mean(chris_age_vector)

#Packages
  #installing a package
install.packages('tidyverse')

  #calling a package
library(tidyverse)

#Missing data
chris_age_vector <- c(NA, chris_age_vector)
mean(chris_age_vector)

mean(chris_age_vector, na.rm=TRUE)

#Setting up the working directory
dir.create('data')
dir.create('data_output')
dir.create('fig_output')
dir.create('scripts')

#Reading in data
unmessy_movies <- read.csv("~/Downloads/unmessy_movies.csv")

#Saving original data
write.csv(unmessy_movies,"./data/original_unmessy_movies.csv")

View(unmessy_movies)

#Inspecing our data
names(unmessy_movies)
dim(unmessy_movies)
str(unmessy_movies)
head(unmessy_movies)
tail(unmessy_movies)

  #subsetting data frames
unmessy_movies[2,2]
unmessy_movies[2,1:5]
unmessy_movies[ ,2]
unmessy_movies[2,-1]

  #solution
movies_first100 <- unmessy_movies[1:100, ]

write.csv(movies_first100, "./data_output/movies_first100.csv")

#Using factors
  #creating a factor 
genres <- factor(unmessy_movies$primary_genre)
levels(genres)

  #recoding a factor
genres <- fct_recode(genres, Music="Musical")
levels(genres)

  #plotting the distribution of our factor levels
plot(genres)

#Selecting and filtering
select(unmessy_movies, movie_title, year, runtime, primary_genre)
select(unmessy_movies, movie_title:primary_genre)

filter(unmessy_movies, primary_genre=="Music")
filter(unmessy_movies, primary_genre=="Action",
       runtime < 60)

  #solution
filter(unmessy_movies, primary_genre=='Animation', year<1990)

#Pipes
unmessy_movies %>%
  filter(primary_genre=="Sci-Fi") %>%
  select(movie_title, director_name, director_id)

scifi_movies <- unmessy_movies %>%
  filter(primary_genre=="Sci-Fi") %>%
  select(movie_title, director_name, director_id)

  #solution
action_movies <- unmessy_movies %>%
  filter(primary_genre=="Action") %>%
  select(movie_title, year, ave_rating)

#Mutate
unmessy_movies %>%
  mutate(writers_id = strsplit(writers_id,",")) %>%
  mutate(num_writers = lengths(writers_id))

  #solution
unmessy_movies2 <- unmessy_movies %>%
  mutate(writers_id = strsplit(writers_id,",")) %>%
  mutate(num_writers = lengths(writers_id))

#Split-apply-combine
  #summarizing
unmessy_movies %>%
  group_by(primary_genre) %>%
  summarize(mean_rating = mean(ave_rating))%>%
  ungroup()

unmessy_movies %>%
  group_by(primary_genre) %>%
  summarize(mean_rating = mean(ave_rating))%>%
  arrange(mean_rating)%>%
  ungroup()

  #solution
genre_ratings <- unmessy_movies %>%
  group_by(primary_genre) %>%
  summarize(mean_rating = mean(ave_rating))%>%
  arrange(desc(mean_rating))%>%
  ungroup()

#Counting
unmessy_movies %>% 
  count(year)

  #adding sort
unmessy_movies %>% 
  count(year, sort=TRUE)

#saving new data frames
write.csv(scifi_movies, "./data_output/scifi_movies.csv")
write.csv(action_movies, "./data_output/action_movies.csv")
write.csv(unmessy_movies2, "./data_output/unmessy_movies2.csv")
write.csv(genre_ratings, "./data_output/genre_ratings.csv")

#Using ggplot2
unmessy_movies %>%
  ggplot(aes(x=year, y=runtime))+geom_point()

  #customizing plots
colourful_plot <- movies_first100 %>% 
  ggplot(aes(x=year, y=runtime)) + geom_jitter(aes(color=primary_genre), alpha=0.5)

ggsave("./fig_output/colourful_jitterplot.png", plot=colourful_plot)

  #making bar and boxplots
unmessy_movies %>%
  ggplot(aes(x = primary_genre, y = ave_rating)) +
  geom_boxplot(aes(fill=primary_genre)) +
  labs(title="Average movie rating by genre") +
  theme(axis.text.x = element_blank())

ggsave("./fig_output/colourful_boxplot.png")




