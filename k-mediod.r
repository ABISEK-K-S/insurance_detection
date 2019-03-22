
 rm(list=ls())
 dataset0=read.csv("test.csv",header=T)
 dataset=dataset0[1:5]


 library("factoextra")
 library(cluster)


 df=dataset
 print(df)
 df=dataset[4:5]
 print(df) 
 head(df, n = 3)
 pam(x, k, metric = "euclidean", stand = FALSE)

 pam.res <- pam(df, 3)
 print(pam.res)
 dd <- cbind(df, cluster = pam.res$cluster)
 head(dd, n = 3)
 pam.res$medoids
 head(pam.res$clustering)
 fviz_cluster(pam.res, geom = "point", ellipse.type = "norm")
