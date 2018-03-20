#!/bin/bash

STRING=$1
FILE=$2

if [[ -z $STRING ]]; then
echo "Usage: fastaFind.sh "
else
awk -v p="$STRING" 'BEGIN{ ORS=""; RS=">"; FS="\n" } $1 ~ p { print ">" $0 }' "$FILE"
fi

#Usage:
#cd /mnt/data6/Evolution/reference/ensembl/Ornithorhynchus_anatinus/
#awk -F "\t" '{print $1":"}' Ornithorhynchus_anatinus.OANA5.91.gtf | grep -v "#" | grep "t" | sort | uniq > contigs

#for f in cat contigs
#do
#	bash find_chr_fa.sh $f ./ensembl_chr/Ornithorhynchus_anatinus.OANA5.dna.nonchromosomal.fa > ./annotated_chr_and_contig/Ornithorhynchus_anatinus.OANA5.dna.chromosome.${f%:*}.fa
#done
