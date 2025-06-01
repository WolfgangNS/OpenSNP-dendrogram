# OpenSNP-dendrogram
Have you ever wondered how related we all are? Current estimates have stated that humans are 99.9% similar in gene sequences for coding regions. A similar figure says that all people could be 12th cousins of each other. While platforms like Ancestry and 23andme show people their 2nd and 3rd cousins, I wanted to see if I could independently identify more distant cousins on more distant continents. 

This has been not only a project to look at human geneology from a more data-driven perspective, but also to demonstrate how I can manage large datasets, and to hopefully inspire further questions and further research. Could there be any unique genotypes hidden within this data set? Could there be any unique adaptations to diseases? Any hidden trends we have never seen before?

<p align="center">
  <img src="dendrogram%20with%20proper%20labels.svg" style="width:20%;height:20%">
</p>


# Packages
### Shell
* htslib
* bgzip
* bcftools
* R-base

### R
* gdsfmt, SNPRelate, ggplot2, dendextend, circlize

# Data resources
1. Genome sequence, primary assembly (GRCh37) in .fa.gz format (download here: https://www.gencodegenes.org/human/release_39lift37.html)
1. 23andme SNP files in .23andme.txt format (download here: https://archive.org/details/opensnp_data_dumps)

# How to run
Open Colab notebook, run the blocks of code one-by-one.

# To-do list
1. Look at matrilineal descent based on mitochondrial DNA only
1. IGV visualization
1. Clear outputs from Colab notebook
1. Make transparent SVG, with white line theme
