d = data.frame( x=rep(0, 1000), y=rep(0,1000), z=rep(0,1000))


OGGselect<-function(x) {
x<-data.matrix(x)
OGGs<-x[sample(nrow(x),5),sample(ncol(x),5)] #randomly sample 5 row (can convert between columns & rows)
}

#take the random sample and calculate the pairwise correlations, turn into a vector
OGG_sample_cor<-function(x) {
OGG_sample_cor<-cor(OGGs,use="pairwise.complete.obs")
OGG_sample_cor[lower.tri(OGG_sample_cor,diag = TRUE)]<-NA
OGG_sample_cor<-na.omit(as.numeric(OGG_sample_cor))
}

OGG_sample_dist<- function(x) {
x<-mean(OGG_sample_cor)
y<-median(OGG_sample_cor)
z<-var(OGG_sample_cor)
d = rbind(d, data.frame(x, y, z))
}

2) Build empty data frame of desired size beforehand and fill by row

E.g. for 10 rows:
d = data.frame( x=rep(0, 10), y=rep(0,10), z=rep(0,10))

And in the loop (index i):

d[i, ] = c(x, y, z)

