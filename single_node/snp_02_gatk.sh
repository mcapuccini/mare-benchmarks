#!/bin/bash

# Make a tmp directory
mkdir -p $PWD/tmp

# Assume input in the same directory
docker run -d -v $PWD/tmp:/tmp -v $PWD:/host_pwd --name gatk \
  mcapuccini/alignment:latest \
  sh -c '
  set -e
  cat /ref/human_g1k_v37.dict /host_pwd/aln.sam > /host_pwd/aln.header.sam
  gatk AddOrReplaceReadGroups --INPUT=/host_pwd/aln.header.sam \
    --OUTPUT=/host_pwd/aln.header.sorted.rg.bam \
    --SORT_ORDER=coordinate --RGID=HG02666-id \
    --RGLB=HG02666-lib \
    --RGPL=ILLUMINA \
    --RGPU=HG02666-01 \
    --RGSM=HG02666
  gatk BuildBamIndex --INPUT=/host_pwd/aln.header.sorted.rg.bam
  reference_genome=/ref/human_g1k_v37.fasta
  gatk HaplotypeCallerSpark -R $reference_genome -I /host_pwd/aln.header.sorted.rg.bam -O /host_pwd/aln.g.vcf'
