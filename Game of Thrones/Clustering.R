library(readr)
library(reshape2)
library(tidyr)
library(dplyr)
library(data.table)
library(devtools)
library(factoextra)
library(NbClust)



characters = read_csv("data/characters.csv")
episodes = read_csv("data/episodes.csv")
scenes = read_csv("data/scenes.csv")
appearances = read_csv("data/appearances.csv")

character_deaths <- read_csv("data/character-deaths.csv")
character_predictions <- read_csv("data/character-predictions.csv")

# Data engineering


Data = scenes %>% left_join(appearances)%>% 
  left_join(episodes) %>% group_by(episodeId,location,name) %>% 
  summarise(Totale_nbc=sum(nbc),N_App = length(name),
            screenTime=sum(duration))%>% 
  left_join(character_predictions, by="name")
Data$Popularity_Time <- Data$popularity*Data$screenTime
Data$Popularity_Time[is.na(Data$Popularity_Time)] <- 0
#Data$isNoble[is.na(Data$isNoble)] <- 0
Data = Data%>% group_by(episodeId) %>% 
  summarise(Totale_death=sum(Totale_nbc),
            Totale_Time=sum(screenTime),
            Popularity_Time=sum(Popularity_Time),
            Sum_Noble=sum(isNoble,na.rm = TRUE))

Data$Popularity_Index <- Data$Popularity_Time/Data$Totale_Time

Data = Data %>% select(c("episodeId","Totale_death","Sum_Noble",
                         "Popularity_Index"))

# Train data 
# Normaliser les données

train = Data %>% select(-"episodeId")

for (v in colnames(train)){
  train[v] = (train[v] - mean(train[v][[1]])) / sd(train[v][[1]])
}

head(train)

# PCA Analysis

train.pr <- prcomp(train, center = FALSE, scale = FALSE)
summary(train.pr)


# Plots Pca 
screeplot(train.pr, type = "l", npcs = 59, main = "Screeplot of the first 10 PCs")
abline(h = 1, col="red", lty=5)
legend("topright", legend=c("Eigenvalue = 1"),
       col=c("red"), lty=5, cex=0.6)
cumpro <- cumsum(train.pr$sdev^2 / sum(train.pr$sdev^2))
plot(cumpro[0:59], xlab = "PC #", ylab = "Amount of explained variance", main = "Cumulative variance plot")
abline(v = 59, col="blue", lty=5)
abline(h = 0.95274, col="blue", lty=5)
legend("topleft", legend=c("Cut-off @ PC6"),
       col=c("blue"), lty=5, cex=0.6)


# New train pca

train_pca = train.pr$x[,1:59]
head(train_pca)

# Elbow method
wss <- (nrow(train)-1)*sum(apply(train,2,var))
for (i in 2:25) wss[i] <- sum(kmeans(train,
                                     centers=i)$withinss)
plot(1:72, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")

# Elbow method
fviz_nbclust(train, kmeans,k.max = 15, method = "wss") +
  geom_vline(xintercept = 7, linetype = 2)+
  labs(subtitle = "Elbow method")

# Silhouette method
fviz_nbclust(train, kmeans,k.max = 15, method = "silhouette")+
  labs(subtitle = "Silhouette method")

# Gap statistic
# nboot = 50 to keep the function speedy. 
# recommended value: nboot= 500 for your analysis.
# Use verbose = FALSE to hide computing progression.
set.seed(123)
fviz_nbclust(train, kmeans,k.max = 25, nstart = 25,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

# Silouhette methode

# function to compute average silhouette for k clusters
library(tidyverse)  # data manipulation
library(cluster)    # clustering algorithms
library(factoextra) # clustering algorithms & visualization

avg_sil <- function(k) {
  km.res <- kmeans(train, centers = k, nstart = 25)
  ss <- silhouette(km.res$cluster, dist(train))
  mean(ss[, 3])
}

# Compute and plot wss for k = 2 to k = 15
k.values <- 2:25

# extract avg silhouette for 2-15 clusters
avg_sil_values <- map_dbl(k.values, avg_sil)

plot(k.values, avg_sil_values,
     type = "b", pch = 19, frame = FALSE, 
     xlab = "Number of clusters K",
     ylab = "Average Silhouettes")

fviz_nbclust(train, kmeans, method = "silhouette")






k7 <- kmeans(train, centers = 12, nstart = 25)
k9 <- kmeans(train, centers = 9, nstart = 25)
k10 <- kmeans(train, centers = 10, nstart = 25)

# plots to compare
p1 <- fviz_cluster(k7, geom = "point", data = train) + ggtitle("k = 7")
p2 <- fviz_cluster(k9, geom = "point",  data = train) + ggtitle("k = 9")
p3 <- fviz_cluster(k10, geom = "point",  data = train) + ggtitle("k = 10")


library(gridExtra)
grid.arrange(p1, p2, p3, nrow = 2)




# Clustering decision

Clustrer = kmeans(train, centers = 7, nstart = 25)
train$Profil = Clustrer$cluster
Data$Profil <- Clustrer$cluster
Data$Totale_death <- (Data$Totale_death/max(Data$Totale_death))*100
Data$Sum_Noble <- (Data$Sum_Noble/max(Data$Sum_Noble))*100
Data$Popularity_Index <- Data$Popularity_Index*100
Data <- Data %>%  left_join(episodes %>% select(c("episodeId","episodeTitle","seasonNum"))) 
write.csv(Data,"C:/Users/Hicham TAZI/Desktop/ECC-3A 2020-2021/Visualisation des données/Projet_TC/Data.csv")



