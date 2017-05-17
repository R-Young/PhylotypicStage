#get time points for eash sample name
x<-cbind(dat,sample=(rownames(dat)))
x<-merge(sample_table[,c(1,3)],x, by="sample")

#remove sample name
x<-x[,-1]

#use by to calculate column Means for each gene at each timepoint
test<-by(x[,2:8729], x$time.point,colMeans)

#unsplit the resulting list
x.means<-do.call("rbind",test)



#same as above but for stdev
test<-by(x[,2:8729], x$time.point,var)
x.var<-do.call("rbind",test)