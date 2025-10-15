stats<-read.csv(file.choose())
stats
getwd()
setwd("C:\\Users\\ece-lab\\Desktop\\")
getwd()
rm(stats)
stats<-read.csv("Copy of 50_Startups.csv")
stats

nrow(stats)
ncol(stats)
head(stats)
tail(stats)
str(stats)
head(stats,n=10)
tail(stats,n=8)
summary(stats)

head(stats)
stats[3,3]
stats[3,"State" ]

stats$Internet.users
stats$Internet.users[2]
stats[,"Internet.users"]
level(stats$Invome.group)
