#!/bin/bash

# Assume input in the same directory
docker run -d -v $PWD:/host_pwd --name bwa \
  mcapuccini/alignment:latest \
  sh -c 'bwa mem -t 16 -p /ref/human_g1k_v37.fasta /host_pwd/HG02666_1_7.fastq | samtools view > /host_pwd/aln.sam'
