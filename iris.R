library(datasets)

#importing iris
data(iris)

#Retrieving colums
iris$Sepal.Width
iris$Species

#First 5 elements of dataset.
head(iris,5)
#Last 5 elements of dataset/
tail(iris,5)

#Summary
summary(iris)

#Counting the number of missing values.
sum(is.na(iris))

install.packages("skimr")

library(skimr)
#To display summary statistics.
skim(iris)

#Group data by Species then perform skim
iris %>% dplyr::group_by(Species) %>% skim()
