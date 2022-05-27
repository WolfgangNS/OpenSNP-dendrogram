# OpenSNP-dendrogram
Phylogenetic tree generator for samples from OpenSNP.
Tested on Ubuntu LTS 20.04 for Windows.

Packages you must install:
1. htslib
2. bgzip
3. bcftools
4. R-base

Data to install:
1. Genome sequence, primary assembly (GRCh37) in .fa.gz format (download here: https://www.gencodegenes.org/human/release_39lift37.html)
2. 23andme SNP files in .23andme.txt format (download here: https://archive.org/details/opensnp_data_dumps)

Invoke from command line: `sh convert.sh`
