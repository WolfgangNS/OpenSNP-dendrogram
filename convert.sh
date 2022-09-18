#curl --progress-bar -o Homo_sapiens.GRCh37.75.dna.primary_assembly.fa.gz https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_39/GRCh37_mapping/GRCh37.primary_assembly.genome.fa.gz
#curl -o --progress-bar opensnp_datadump.2017-12-08.zip https://archive.org/download/opensnp_data_dumps/opensnp_datadump.2017-12-08.zip

#git clone --recurse-submodules https://github.com/samtools/htslib.git
#git clone https://github.com/samtools/bcftools.git
#cd bcftools
# # The following is optional:
# #   autoheader && autoconf && ./configure --enable-libgsl --enable-perl-filters
#make
#make install

for i in *.23andme.txt
do
  echo "converting $i to .vcf"
  bcftools convert -c ID,CHROM,POS,AA --tsv2vcf "$i" -f Homo_sapiens.GRCh37.75.dna.primary_assembly.fa.gz -s "$i" -Ov -o "$i.vcf"
  bcftools view "$i.vcf" -Oz -o "$i.gz"
  bcftools index "$i.gz"
  echo "$i.gz" >>list.txt
done
bcftools merge -l list.txt -o merged.vcf
Rscript "dendrogram.r"

#TO-DO: test recently added code in comments
#TO-DO: download each of the 94 samples from OpenSNP (or download from archive.org, extract only those 94)
#for readme: need in this directory: 23andme files as .txt, human genome assembly
