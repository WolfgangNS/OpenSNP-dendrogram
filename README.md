# OpenSNP-dendrogram
Phylogenetic tree generator for samples from OpenSNP.
Tested on Ubuntu LTS 20.04 for Windows.

<img src="dendrogram-v2.PNG" style="width:20%;height:20%">

# Packages to install
### Shell
* htslib
* bgzip
* bcftools
* R-base
### R
* gdsfmt, SNPRelate, ggplot2, dendextend, circlize

# Data to install
1. Genome sequence, primary assembly (GRCh37) in .fa.gz format (download here: https://www.gencodegenes.org/human/release_39lift37.html)
1. 23andme SNP files in .23andme.txt format (download here: https://archive.org/details/opensnp_data_dumps)

# How to run
Invoke from Ubuntu LTS shell: `sh convert.sh`

# To-do list
1. Insert curl command to download and unpack datasets for OpenSNP and GRCh37
1. Insert install commands for libraries
1. Batch file renamer to shorten labels (e.g. "user6969_file420_yearofbirth..." to "user6969")
1. Additional code to clean OpenSNP/23andme data, and make cross-compatible between releases
