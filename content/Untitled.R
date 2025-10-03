#setting up working directory
dir.create('data')
dir.create('data_output')
dir.create('fig_output')
dir.create('scripts')

#checking working directory
getwd()

#importing data
unmessy_movies <- read.csv("~/Downloads/unmessy_movies/data/unmessy_movies.csv")
write.csv(unmessy_movies,"./data/original_unmessy_movies.csv")

write.csv(genre_ratings, "./data_output/genre_ratings.csv")

#setting the library
library(tidyverse)

#inspecting the data
View(unmessy_movies)
names(unmessy_movies)

dim(unmessy_movies)
str(unmessy_movies)

head(unmessy_movies)
tail(unmessy_movies)

#subsetting data frames
unmessy_movies[2,2]
unmessy_movies[2, 1:5]
unmessy_movies[ ,2]
unmessy_movies[2,-1]

#creating a subset of the first 100 movies
movies_first100 <- unmessy_movies[1:100, ]

#creating and analysing a factor
genres <- factor(unmessy_movies$primary_genre)
levels(genres)

genres <- fct_recode(genres, Music="Musical")
levels(genres)

plot(genres)
