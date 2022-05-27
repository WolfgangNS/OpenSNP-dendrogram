library(gdsfmt)
library(SNPRelate)
library(ggplot2)
vcf.fn <- "merged.vcf"
#vcf.fn <- "VCFExampleData.vcf"
snpgdsVCF2GDS(vcf.fn,"data.gds",method ="biallelic.only")
genofile<-snpgdsOpen("data.gds")
set.seed(100)
ibs.hc<-snpgdsHCluster(snpgdsIBS(genofile,num.thread=2, autosome.only=FALSE))
rv <- snpgdsCutTree(ibs.hc)
par(cex=0.15)
plot(rv$dendrogram,main="Dendrogram based on IBS")
graphics.off()