---
title: "Cor of Random OGGs"
author: "Rebecca Young"
date: "April 22, 2016"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

Make the appropriate (stage specific) datasets
===============================

```{r}
pharyngula.all.genes<-t(Mus.OGG.dat[4,])
pharyngula.all.genes<-cbind(pharyngula.all.genes, Gallus=t(Gal.OGG.dat[8,]))
pharyngula.all.genes<-cbind(pharyngula.all.genes, X.laev=t(Xlaev.OGG.dat[10,]))
pharyngula.all.genes<-cbind(pharyngula.all.genes, X.trop=t(Xtrop.OGG.dat[9,]))
pharyngula.all.genes<-cbind(pharyngula.all.genes, Dan=t(Dan.OGG.dat[6,]))

blastula.all.genes<-t(Mus.OGG.dat[1,])
blastula.all.genes<-cbind(blastula.all.genes, Gallus=t(Gal.OGG.dat[1,]))
blastula.all.genes<-cbind(blastula.all.genes, X.laev=t(Xlaev.OGG.dat[3,]))
blastula.all.genes<-cbind(blastula.all.genes, X.trop=t(Xtrop.OGG.dat[1,]))
blastula.all.genes<-cbind(blastula.all.genes, Dan=t(Dan.OGG.dat[12,]))

latest.all.genes<-t(Mus.OGG.dat[11,])
latest.all.genes<-cbind(latest.all.genes, Gallus=t(Gal.OGG.dat[8,]))
latest.all.genes<-cbind(latest.all.genes, X.laev=t(Xlaev.OGG.dat[15,]))
latest.all.genes<-cbind(latest.all.genes, X.trop=t(Xtrop.OGG.dat[15,]))
latest.all.genes<-cbind(latest.all.genes, Dan=t(Dan.OGG.dat[15,]))
````

Draw and PW correlation function
========================================
Function that randomly draws five genes
calculates all PW correlations among genes
calculates mean, median, and var of the PW correlations

```{r}
OGGnetworkDist<-function(x) {
x<-data.matrix(x)
OGGs<-x[sample(nrow(x),5),] #randomly sample n row (can convert between columns & rows)
OGG_sample_cor<-cor(OGGs,use="pairwise.complete.obs")
OGG_sample_cor[lower.tri(OGG_sample_cor,diag = TRUE)]<-NA
OGG_sample_cor<-(as.numeric(OGG_sample_cor))
z<-data.frame(z1=mean(OGG_sample_cor,na.rm=TRUE),z2=median(OGG_sample_cor,na.rm=TRUE), z3=var(OGG_sample_cor,na.rm=TRUE))
z<-return(as.data.frame(z))
}
````


Replicate OGGnetworkDist for different stages
========================================


```{r}
z<-do.call( rbind, replicate(1000, OGGnetworkDist(pharyngula.all.genes), simplify=FALSE ) )
colnames(z)<-c("mean", "median", "var")
pharygula.randNetwork<-z


z<-do.call( rbind, replicate(1000, OGGnetworkDist(blastula.all.genes), simplify=FALSE ) )
colnames(z)<-c("mean", "median", "var")
blastula.randNetwork<-z

z<-do.call( rbind, replicate(1000, OGGnetworkDist(latest.all.genes), simplify=FALSE ) )
colnames(z)<-c("mean", "median", "var")
latest.randNetwork<-z
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
