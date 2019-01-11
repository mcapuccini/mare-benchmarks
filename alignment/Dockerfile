FROM nfcore/eager:2.0.2
LABEL maintainer="Marco Capuccini <marco.capuccini@it.uu.se>"

RUN mkdir /ref
WORKDIR /ref

# download the reference genome and unzip it
RUN wget -nv ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/human_g1k_v37.fasta.gz
RUN gunzip human_g1k_v37.fasta.gz || true

# index the reference genome
RUN bwa index -a bwtsw human_g1k_v37.fasta

WORKDIR /
