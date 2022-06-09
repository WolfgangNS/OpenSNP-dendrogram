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

library(dendextend)
library(circlize)
dend1 <- rv$dendrogram
dend2 <- rank_branches(dend1)
par(cex=0.5) #label size
circlize_dendrogram(dend2)
graphics.off()
