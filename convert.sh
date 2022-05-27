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

#TO-DO: curl command to download GRCh37 (and possibly unpack)
#TO-DO: code to convert GRCh37 assembly to .fa.gz
#for readme: need in this directory: 23andme files as .txt, human genome assembly