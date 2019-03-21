
rm(list=ls())
dataset0=read.csv("test.csv",header=T)
dataset=dataset0[1:5]



summary(dataset)
print("Printing the entire datas")
print(dataset)
dataset=dataset0[3:5]

print("Printing the specifc data to be processed")
print(dataset)
set.seed(123)
set.seed(6)
wcss=vector()   
for(i in 1:10) wcss[i]=sum(kmeans(dataset,i)$withinss)

plot(1:10,wcss,type="p",col="red",
main=paste("The Elbow method (Phase--> 1)"),xlab="Number of Clusters",ylab="WCSS")

plot(1:10,wcss,type="b",col="blue",
main=paste("The Elbow method (Phase--> 2)"),xlab="Number of Clusters",ylab="WCSS")

plot(1:10,wcss,type="l",col="green",
main=paste("The Elbow method (Phase--> 3)"),xlab="Number of Clusters",ylab="WCSS")
 

kmeans=kmeans(x=dataset,centers=4)
y_kmeans=kmeans$cluster 
print(y_kmeans)




library(cluster)
clusplot(dataset,y_kmeans,lines=0,
shade=TRUE,
color=TRUE,
labels=1,
plotchar=TRUE,
span=TRUE,
main=paste("Insurace "),
xlab="Passenger Travelled",
ylab="Injured")
