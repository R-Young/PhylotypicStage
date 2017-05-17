x<-Xlaev.OGG.shared
x.stage.names<-colnames(x)
y<-Xtrop.OGG.shared
y.stage.names<-colnames(y)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))
y<-matrix(as.numeric(unlist(y)),nrow=nrow(y))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
X.trop.laev.cor<-z


#
x<-Xlaev.OGG.shared
x.stage.names<-colnames(x)
y<-Dan.OGG.shared
y.stage.names<-colnames(y)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))
y<-matrix(as.numeric(unlist(y)),nrow=nrow(y))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
Dan.Xlaev.cor<-z


#
x<-Xtrop.OGG.shared
x.stage.names<-colnames(x)
y<-Dan.OGG.shared
y.stage.names<-colnames(y)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))
y<-matrix(as.numeric(unlist(y)),nrow=nrow(y))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
Dan.Xtrop.cor<-z


#
x<-Xtrop.OGG.shared
x.stage.names<-colnames(x)
y<-Gal.OGG.shared
y.stage.names<-colnames(y)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))
y<-matrix(as.numeric(unlist(y)),nrow=nrow(y))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
Gal.Xtrop.cor<-z


#
x<-Xlaev.OGG.shared
x.stage.names<-colnames(x)
y<-Gal.OGG.shared
y.stage.names<-colnames(y)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))
y<-matrix(as.numeric(unlist(y)),nrow=nrow(y))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
Gal.Xlaev.cor<-z


#
x<-Dan.OGG.shared
x.stage.names<-colnames(x)
y<-Gal.OGG.shared
y.stage.names<-colnames(y)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))
y<-matrix(as.numeric(unlist(y)),nrow=nrow(y))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
Gal.Dan.cor<-z


##########Below have differing number of stages  ##############

y<-Mus.OGG.shared
y.stage.names<-colnames(y)
x<-Gal.OGG.shared
x.stage.names<-colnames(x)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))
y<-matrix(as.numeric(unlist(y)),nrow=nrow(y))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
Mus.Gal.cor<-z


#

x<-Dan.OGG.shared
x.stage.names<-colnames(x)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
Mus.Dan.cor<-z


#

x<-Xlaev.OGG.shared
x.stage.names<-colnames(x)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
Mus.Xlaev.cor<-z


#

x<-Xtrop.OGG.shared
x.stage.names<-colnames(x)
x<-matrix(as.numeric(unlist(x)),nrow=nrow(x))

z<-cor(x,y,use="pairwise.complete.obs", method="spearman")
rownames(z)<-x.stage.names
colnames(z)<-y.stage.names
Mus.Xtrop.cor<-z


